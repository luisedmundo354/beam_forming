---

## Summary  

This work-in-progress repo ports ST’s **beam-forming and multi-mic capture demo** from the *X-CUBE-MEMSMIC1* expansion pack to the **NUCLEO-L476RG** platform, keeping the original AcousticBF real-time beam-forming middleware and USB-audio streaming path intact. ([X-CUBE-MEMSMIC1 - STMicroelectronics](https://www.st.com/en/embedded-software/x-cube-memsmic1.html?utm_source=chatgpt.com), [[PDF] UM2214 - Getting started with AcousticBF real-time beam forming ...](https://www.st.com/resource/en/user_manual/um2214-getting-started-with-acousticbf-realtime-beam-forming-middleware-stmicroelectronics.pdf?utm_source=chatgpt.com), [STMicroelectronics/x-cube-memsmic1 - GitHub](https://github.com/STMicroelectronics/x-cube-memsmic1?utm_source=chatgpt.com))  

---

## 1  Overview  

| Feature | Status | Notes |
|---------|--------|-------|
| Adaptive beam-forming (AcousticBF) | ✅ | Two-mic fixed steer; run-time tunable coefficients |
| PDM → PCM conversion | ✅ | DFSDM peripheral, 48 kHz mono |
| USB Audio Device Class | ✅ | Enumerates as 48 kHz/16-bit microphone endpoint  ([Introduction to USB with STM32 - stm32mcu - ST wiki](https://wiki.st.com/stm32mcu/wiki/Introduction_to_USB_with_STM32?utm_source=chatgpt.com)) |
| FreeRTOS optional | ⬜ | Kernel present in *Middlewares/Third_Party* (disabled by default) |
| Sound-Source-Localization (AcousticSL) | ⬜ | Library present, not yet wired |
| Echo-Cancellation (AcousticEC) | ⬜ | Library present, not yet wired |

---

## 2  Hardware  

* **NUCLEO-L476RG** development board (STM32L476RGT6 MCU).  
* **X-NUCLEO-CCA02M2** dual-MEMS microphone shield (2 × MP34DT06J) plugged on Morpho/Arduino headers. ([[PDF] x-nucleo-cca02m2 quick start guide](https://www.st.com/resource/en/product_presentation/x-nucleo-cca02m2_quick_start_guide.pdf?utm_source=chatgpt.com), [[PDF] UM2631 - Getting started with the digital MEMS microphone ...](https://www.st.com/resource/en/user_manual/um2631-getting-started-with-the-digital-mems-microphone-expansion-board-based-on-mp34dt06j-for-stm32-nucleo-stmicroelectronics.pdf?utm_source=chatgpt.com))  
* (Optional) Extra digital-mic coupon boards for 4-mic arrays.  
* Micro-USB cable for ST-Link flashing & USB-audio streaming.

---

## 3  Software Prerequisites  

| Tool | Version | Comment |
|------|---------|---------|
| **STM32CubeIDE** | ≥ 1.15 | Open the `beam_forming.ioc` directly. Import wizard reference  ([Importing a new .ioc in an existing project](https://community.st.com/t5/stm32cubemx-mcus/importing-a-new-ioc-in-an-existing-project/td-p/61191?utm_source=chatgpt.com), [QuicTip #7 How to import archived project into STM32CubeIDE](https://www.youtube.com/watch?pp=0gcJCdgAo7VqN5tD&v=TtfKunFbshM&utm_source=chatgpt.com)) |
| **X-CUBE-MEMSMIC1** pack | v10.x | Libraries already committed under `/Middlewares/ST` |
| **Parson** JSON lib | bundled | Lightweight C JSON lib used for runtime configs  ([kgabis/parson: Lightweight JSON library written in C. - GitHub](https://github.com/kgabis/parson?utm_source=chatgpt.com), [which JSON library is good for generating and pars...](https://community.st.com/t5/stm32-mcus-products/which-json-library-is-good-for-generating-and-parsing-for-st/td-p/114552?utm_source=chatgpt.com)) |

---

## 4  Getting Started  

### 4.1  Clone  

```bash
git clone https://github.com/<your-user>/beam_forming_L476.git
cd beam_forming_L476
```

### 4.2  Import into CubeIDE  

> **File → Open Projects from File System…** → choose repo root → CubeIDE detects the `.ioc` and generates the Eclipse project automatically. ([Importing a new .ioc in an existing project](https://community.st.com/t5/stm32cubemx-mcus/importing-a-new-ioc-in-an-existing-project/td-p/61191?utm_source=chatgpt.com))  

### 4.3  Build & Flash  

1. Select *beam_forming* build configuration.  
2. **Project → Build**.  
3. Connect NUCLEO board, press **Debug** (or **Run**) to flash via ST-Link.

### 4.4  Verify USB Streaming  

* After reset, the board enumerates as **“STM32 BeamForm Mic”** (USB Audio Class 1).  
* Open Audacity / arecord / any host DAW at 48 kHz mono and verify that only sounds in the steered direction are captured. ([Introduction to USB with STM32 - stm32mcu - ST wiki](https://wiki.st.com/stm32mcu/wiki/Introduction_to_USB_with_STM32?utm_source=chatgpt.com), [Solved: [BUG] STM32CubeMX USB Audio Class example not hand...](https://community.st.com/t5/stm32cubemx-mcus/bug-stm32cubemx-usb-audio-class-example-not-handling-usb-set/td-p/400465?utm_source=chatgpt.com))  

---

## 5  Repository Layout (top-level)

```text
├── beam_forming.ioc          # CubeMX project file
├── Core/                     # HAL, drivers, application code
├── Drivers/                  # BSP, CMSIS & HAL
├── Middlewares/              # AcousticBF/SL libs, USB Device, FreeRTOS, Parson
├── STM32L476RGTX_FLASH.ld    # Linker scripts
└── README.md
```

---

## 6  Configuration Notes  

* **Beam-steering angle**: set in `audio_application.c → ACOUSTICBF_Config_t`.  
* **USB descriptors**: `usbd_desc.c/usbd_audio_if.c`; change bEndpointAddress to expose stereo or 96 kHz if needed.  
* **Clock tree**: uses 80 MHz SYSCLK, 48 MHz USB clock from PLLSAI1 (configured in `.ioc`).  

---

## 7  Roadmap / TODO  

* Enable **AcousticSL** (sound-source-localization) and **AcousticEC** (echo-cancel) libs. ([STM32Cube software libraries: new features for MEMS](https://www.electronicsonline.net.au/content/design/article/stm32cube-software-libraries-new-features-for-mems-1397523804?utm_source=chatgpt.com))  
* Add 4-mic array support via additional coupon boards.  
* Provide host Python script for live polar-plot visualisation.  
* Continuous-integration build on GitHub Actions.

---

## 8  Contributing  

Pull requests are welcome! Please open an issue first to discuss major changes, and follow the ST Cube coding style where possible.

---

## 9  License  

ST firmware components retain their original *ST Liberty* or *BSD-3-Clause* licenses (see `/Drivers` and `/Middlewares` LICENSE.txt files). ([X-CUBE-MEMSMIC1 - STMicroelectronics](https://www.st.com/en/embedded-software/x-cube-memsmic1.html?utm_source=chatgpt.com), [STMicroelectronics/x-cube-memsmic1 - GitHub](https://github.com/STMicroelectronics/x-cube-memsmic1?utm_source=chatgpt.com))  
Original work in `Core/*` is released under MIT unless stated otherwise.

---

## 10  References  

1. ST *X-CUBE-MEMSMIC1* landing page. ([X-CUBE-MEMSMIC1 - STMicroelectronics](https://www.st.com/en/embedded-software/x-cube-memsmic1.html?utm_source=chatgpt.com))  
2. ST GitHub repo `x-cube-memsmic1`. ([STMicroelectronics/x-cube-memsmic1 - GitHub](https://github.com/STMicroelectronics/x-cube-memsmic1?utm_source=chatgpt.com))  
3. X-NUCLEO-CCA02M2 quick-start guide. ([[PDF] x-nucleo-cca02m2 quick start guide](https://www.st.com/resource/en/product_presentation/x-nucleo-cca02m2_quick_start_guide.pdf?utm_source=chatgpt.com))  
4. UM2631 getting-started manual (CCA02M2). ([[PDF] UM2631 - Getting started with the digital MEMS microphone ...](https://www.st.com/resource/en/user_manual/um2631-getting-started-with-the-digital-mems-microphone-expansion-board-based-on-mp34dt06j-for-stm32-nucleo-stmicroelectronics.pdf?utm_source=chatgpt.com))  
5. UM2214 AcousticBF user manual. ([[PDF] UM2214 - Getting started with AcousticBF real-time beam forming ...](https://www.st.com/resource/en/user_manual/um2214-getting-started-with-acousticbf-realtime-beam-forming-middleware-stmicroelectronics.pdf?utm_source=chatgpt.com))  
6. ElectronicsOnline article on MEMSMIC1 beam-forming additions. ([STM32Cube software libraries: new features for MEMS](https://www.electronicsonline.net.au/content/design/article/stm32cube-software-libraries-new-features-for-mems-1397523804?utm_source=chatgpt.com))  
7. ST Wiki – USB on STM32 overview. ([Introduction to USB with STM32 - stm32mcu - ST wiki](https://wiki.st.com/stm32mcu/wiki/Introduction_to_USB_with_STM32?utm_source=chatgpt.com))  
8. ST forum thread on USB Audio Class quirk. ([Solved: [BUG] STM32CubeMX USB Audio Class example not hand...](https://community.st.com/t5/stm32cubemx-mcus/bug-stm32cubemx-usb-audio-class-example-not-handling-usb-set/td-p/400465?utm_source=chatgpt.com))  
9. CubeIDE project import discussion. ([Importing a new .ioc in an existing project](https://community.st.com/t5/stm32cubemx-mcus/importing-a-new-ioc-in-an-existing-project/td-p/61191?utm_source=chatgpt.com))  
10. Parson JSON library repo. ([kgabis/parson: Lightweight JSON library written in C. - GitHub](https://github.com/kgabis/parson?utm_source=chatgpt.com))  

---

*Happy hacking & happy beaming!*

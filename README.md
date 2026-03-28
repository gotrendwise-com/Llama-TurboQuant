
# 🚀 Llama TurboQuant

**Run Large Language Models on CPU with up to 8× less RAM using advanced KV cache compression.**

![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Platform](https://img.shields.io/badge/Platform-Windows%20x64-blue.svg)
![Version](https://img.shields.io/badge/Version-1.0.0-orange.svg)

---

## 🌟 Overview

**Llama TurboQuant** is a high-performance CPU inference engine that dramatically reduces memory usage by compressing the KV (Key-Value) cache from 16-bit to as low as 2–4 bits per value — without significant quality loss.

> ⚡ Designed for developers, researchers, and AI enthusiasts who want to run LLMs efficiently on CPU-only systems.

---

## 🔥 Key Features

- 🧠 **Up to 8× less RAM usage** for KV cache  
- 🎯 **Near-lossless quality** (28+ dB PSNR)  
- 📈 **Longer context windows** on the same hardware  
- 💻 **Run LLMs without GPU** (CPU-only execution)  
- ⚙️ **Optimized performance** with SIMD (AVX2 / NEON)  

---

## 🚀 Quick Start

1. Download and extract this release  
2. Download a GGUF model (e.g., from Hugging Face)  
3. Place the model inside the `models/` folder  
4. Run the command:

```cmd
bin\turboquant-generate.exe -m models\your-model.gguf "Your prompt here"
````

---

## 🧰 Tools Included

| Tool                       | Description                             |
| -------------------------- | --------------------------------------- |
| `turboquant-generate.exe`  | Generate text using compressed KV cache |
| `llama-turboquant-cli.exe` | CLI tool with benchmarking              |
| `bench-kv-cache.exe`       | KV cache compression benchmark          |
| `bench-throughput.exe`     | Throughput benchmark                    |
| `convert_hf_to_gguf.py`    | Convert HuggingFace models to GGUF      |

---

## 📌 Usage Examples

### ✨ Generate Text

```cmd
bin\turboquant-generate.exe -m models\Qwen3.5-2B.Q8_0.gguf -n 100 "Write a poem about AI"
```

### ⚡ Run Benchmark

```cmd
bin\llama-turboquant-cli.exe --benchmark
```

---

## ⚙️ Configuration Options

```
-m PATH     Model path (GGUF format)
-n N        Tokens to generate (default: 128)
-b N        Quantization bits: 2, 3, or 4 (default: 4)
-c N        Context size (default: 2048)
-t N        CPU threads (default: 4)
-ngl N      GPU layers (default: 0 = CPU only)
```

---

## 📊 Performance Comparison

```
╔══════════════════════════════════════════════════════════════╗
║  Engine            ║ Speed      ║ KV Cache RAM ║ Quality    ║
╠══════════════════════════════════════════════════════════════╣
║  llama.cpp FP16    ║ 0.06 t/s   ║ 24 MB        ║ Perfect    ║
║  TurboQuant 4-bit  ║ 0.06 t/s   ║ 3 MB         ║ 28.4 dB    ║
║  TurboQuant 2-bit  ║ 0.06 t/s   ║ 1.5 MB       ║ 14.4 dB    ║
╚══════════════════════════════════════════════════════════════╝
```

> ⚠️ **Note:** TurboQuant optimizes memory usage, not speed.

---

## 🧠 How It Works

TurboQuant uses a hybrid compression pipeline:

1. **Outlier Detection** → High-magnitude values stored in higher precision
2. **Group Quantization** → Remaining values compressed (2–4 bits)
3. **Mixed Precision Strategy** → Adaptive bit allocation per layer
4. **SIMD Acceleration** → Fast encoding/decoding via AVX2/NEON

---

## 💻 System Requirements

* Windows 10 / 11 (x64)
* CPU-only (no GPU required)
* 2–4 GB RAM (for models up to 2B parameters)

---

## 📥 Download Models

You can download compatible GGUF models from:

* [https://huggingface.co/models?search=gguf](https://huggingface.co/models?search=gguf)
* [https://huggingface.co/unsloth](https://huggingface.co/unsloth)

---

## 👨‍💻 Developer

Developed by **Iftikhar Ali**
🌐 Website: **[https://gotrendwise.com](https://gotrendwise.com)**

---

## 🙏 Credits

Built on top of [llama.cpp](https://github.com/ggerganov/llama.cpp) by Georgi Gerganov.

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## ⭐ Support

If you find this project useful:

* ⭐ Star this repository
* 🛠️ Contribute improvements
* 📢 Share with the community


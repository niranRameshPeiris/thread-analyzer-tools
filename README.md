# 🧵 Thread CPU Tools: Analyzer + Visualizer

A combined toolkit to analyze Java thread dumps and visualize thread behavior with CPU usage correlation.

This project runs two Node.js apps inside a single Docker container:
- **Thread CPU Analyzer** (port `4000`): Upload thread usage + dump files and analyze CPU usage
- **Thread Visualizer** (port `3000`): Interactive D3.js-based viewer for visualizing thread states over time

---

## 🔗 Related Repositories

- 🧠 Thread Visualizer (standalone): [thread-viz-by-peiris](https://github.com/niranRameshPeiris/thread-viz-by-peiris)
- 🔍 Thread CPU Analyzer (standalone): [thread-cpu-analyzer](https://github.com/niranRameshPeiris/thread-cpu-analyzer) *(optional if published separately)*

---

## 🚀 Quick Start with Docker

### 🐳 Pull the Image from Docker Hub

```bash
docker pull niranpeiris/thread-analyzer-tools:1.0.0
```

### ▶️ Run the Container

```bash
docker run -p 3000:3000 -p 4000:4000 niranpeiris/thread-analyzer-tools:1.0.0
```

Then open in browser:
- CPU Analyzer: [http://localhost:4000](http://localhost:4000)
- Thread Visualizer: [http://localhost:3000](http://localhost:3000)

---

## 🧰 Building the Image Yourself

```bash
git clone https://github.com/niranRameshPeiris/thread-analyzer-tools.git
cd thread-analyzer-tools
docker build -t thread-analyzer-tools .
```

### Run It
```bash
docker run -p 3000:3000 -p 4000:4000 thread-analyzer-tools
```
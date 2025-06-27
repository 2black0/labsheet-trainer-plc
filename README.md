# 📚 Book Project: **Dasar Sistem Kendali dan Implementasinya dengan Python** 🎛️

[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen.svg)](https://github.com/your-username/Book-Project-Sistem-Kendali-Python)
[![Language](https://img.shields.io/badge/Language-Indonesian-blue.svg)](README.md)
[![Python](https://img.shields.io/badge/Python-3.8%2B-yellow.svg)](https://python.org)
[![License](https://img.shields.io/badge/License-MIT-red.svg)](LICENSE)

This repository contains the complete source files for the Indonesian-language technical book **"Dasar Sistem Kendali dan Implementasinya dengan Python"** with subtitle **"Simulasi dan Aplikasi Praktis dengan Jupyter Notebook, python-control dan Webots untuk Sistem Kendali PID"**.

The book provides a comprehensive, practical introduction to **control systems theory** and **PID controller implementation** using modern Python tools and libraries. Written specifically for Indonesian engineering students and professionals, it bridges theoretical control systems concepts with hands-on Python programming and simulation.

## 🎯 Target Audience

This book is designed for:

* **Indonesian Engineering Students** studying control systems, automation, robotics, or electrical engineering
* **Professional Engineers** in Indonesia seeking practical Python implementation skills for industrial control systems
* **Lecturers and Educators** teaching control systems courses who want modern, practical teaching materials
* **Researchers and Academics** looking for Indonesian-language resources on modern control system tools
* **Python Developers** interested in expanding into control systems and automation engineering
* **Industry Practitioners** working in manufacturing, robotics, or process control who need Python skills

## 🎓 Learning Objectives

After completing this book, readers will be able to:

* **Master fundamental principles** of control systems and PID controller theory
* **Implement PID controllers** from scratch using Python and validate their performance
* **Use python-control library** effectively for advanced control system analysis and design  
* **Create interactive simulations** and visualizations with Jupyter Notebooks for system analysis
* **Apply control algorithms** to realistic robotic systems using Webots simulator
* **Tune and optimize** PID parameters using various systematic methodologies
* **Analyze system performance** and stability in both time and frequency domains
* **Design complete control solutions** from mathematical modeling to practical implementation

## ✨ Key Features

* **Indonesian Language**: Comprehensive technical content written in Bahasa Indonesia
* **Pandoc Integration**: Professional PDF generation using Pandoc with custom LaTeX template
* **Structured Content**: Organized into 8 chapters with comprehensive subsections across multiple Markdown files
* **Practical Python Examples**: 50+ hands-on Python implementations using modern libraries
* **Interactive Learning**: Jupyter Notebook integration for experimentation and visualization
* **Real-world Applications**: Webots robotics simulations and industrial control examples
* **Mathematical Rigor**: Extensive LaTeX mathematical notation for theoretical concepts
* **Custom Template**: Professional book formatting with Indonesian language support

## 📖 Complete Book Structure

**Based on the updated outline structure (8 chapters total)**

### **Bab 1: Pengenalan Sistem Kendali**

* **1.1** Dasar-dasar Sistem Kendali - Fundamental principles of control systems
* **1.2** Simulasi dan Implementasi Sistem Kendali - Simulation and implementation approaches  
* **1.3** Bahasa Pemrograman Python untuk Sistem Kendali - Python programming for control systems
* **1.4** Ruang Lingkup dan Organisasi Buku - Book scope and organization

### **Bab 2: Persiapan Simulasi Berbasis Python**
* **2.1** Instalasi dan Pengelolaan Lingkungan Python - Python environment setup and management
  * Instalasi Anaconda - Anaconda installation
  * Pengelolaan Virtual Environment dengan Conda - Virtual environment management with Conda
* **2.2** Instalasi dan Penggunaan Library Utama - Main library installation and usage
  * Instalasi Library - Library installation
* **2.3** Pengantar Penggunaan Jupyter Notebook - Introduction to Jupyter Notebook usage
* **2.4** Pengantar Penggunaan NumPy - Introduction to NumPy usage
* **2.5** Pengantar Penggunaan Matplotlib - Introduction to Matplotlib usage
* **2.6** Pengantar Penggunaan python-control - Introduction to python-control usage

### **Bab 3: Pemodelan Sistem**
* **3.1** Konsep Dasar dan Langkah Pemodelan Sistem - Basic concepts and system modeling steps
* **3.2** Representasi Model Sistem - System model representation
  * Fungsi Alih (Transfer Function) - Transfer function representation
  * Model Ruang Keadaan (State-Space) - State-space model representation
* **3.3** Diagram Blok Sistem Kendali - Control system block diagrams
  * Hubungan Seri - Series connections
  * Hubungan Paralel - Parallel connections
  * Hubungan Umpan Balik (Feedback) - Feedback connections
* **3.4** Contoh Pemodelan Sistem Fisik - Physical system modeling examples
  * Sistem Mekanik (Massa-Pegas-Redam) - Mechanical systems (Mass-Spring-Damper)
  * Sistem Elektrik (Rangkaian RC) - Electrical systems (RC circuits)
  * Sistem Proses Industri (Tangki Air) - Industrial process systems (Water tank)
  * Sistem Motor DC - DC motor systems
* **3.5** Validasi Model - Model validation

### **Bab 4: Analisis Domain Waktu**
* **4.1** Konsep Dasar Analisis Domain Waktu - Basic concepts of time domain analysis
* **4.2** Jenis Respons Domain Waktu - Types of time domain responses
  * Respons Step - Step response
  * Respons Impuls - Impulse response
  * Respons Ramp - Ramp response
  * Respons terhadap Sinyal Arbitrer - Response to arbitrary signals
* **4.3** Parameter Kinerja Domain Waktu - Time domain performance parameters
* **4.4** Analisis Sistem Orde 1 dan Orde 2 - First and second order system analysis
  * Sistem Orde 1 - First order systems
  * Sistem Orde 2 - Second order systems
  * Perbandingan Karakteristik dan Aplikasi - Characteristics comparison and applications

### **Bab 5: Analisis Domain Frekuensi**
* **5.1** Konsep Dasar Analisis Domain Frekuensi - Basic concepts of frequency domain analysis
* **5.2** Representasi dan Parameter Kinerja Domain Frekuensi - Frequency domain representation and performance parameters
  * Bode Plot - Bode diagrams
  * Nyquist Plot - Nyquist diagrams
  * Nichols Chart - Nichols charts

### **Bab 6: Analisis Kestabilan Sistem**
* **6.1** Konsep Kestabilan Sistem Dinamis - Dynamic system stability concepts
* **6.2** Analisis Pole dan Zero Sistem - System pole and zero analysis
  * Definisi dan Interpretasi Pole-Zero - Pole-zero definition and interpretation
  * Pengaruh Pole-Zero terhadap Respons Sistem - Pole-zero effects on system response
  * Visualisasi Pole-Zero pada Domain s - Pole-zero visualization in s-domain
* **6.3** Kriteria Kestabilan Routh-Hurwitz - Routh-Hurwitz stability criterion
  * Penyusunan Tabel Routh-Hurwitz - Routh-Hurwitz table construction
  * Syarat Kestabilan Berdasarkan Routh-Hurwitz - Stability conditions based on Routh-Hurwitz
  * Contoh Analisis Kestabilan Sistem dengan Routh-Hurwitz - System stability analysis examples with Routh-Hurwitz
* **6.4** Analisis Kinerja Error Sistem - System error performance analysis
  * Error Steady-State (ess) - Steady-state error
  * Error Tipe Sistem (Tipe 0, 1, 2, dst) - System type errors (Type 0, 1, 2, etc.)
  * Perhitungan Error Integral - Integral error calculations
    * Integral of Absolute Error (IAE)
    * Integral of Squared Error (ISE)
    * Integral of Time-weighted Absolute Error (ITAE)
    * Integral of Time-weighted Squared Error (ITSE)

### **Bab 7: Sistem Kendali PID**
* **7.1** Konsep Dasar dan Struktur PID - Basic concepts and PID structure
* **7.2** PID dalam Domain Laplace - PID in Laplace domain
  * Membuat Kontroler PID - Creating PID controllers
  * Simulasi Sistem dengan PID - System simulation with PID
* **7.3** Tuning Parameter PID - PID parameter tuning
  * Metode Tuning Klasik - Classical tuning methods
  * Metode Tuning Modern dan Otomatis - Modern and automatic tuning methods
  * Evaluasi dan Perbandingan Metode Tuning - Tuning method evaluation and comparison

### **Bab 8: Simulasi Robot dengan Sistem Kendali PID**
* **8.1** Instalasi dan Setup Awal Webots - Webots installation and initial setup
  * Instalasi Webots - Webots installation
  * Setup Proyek dan Robot di Webots - Project and robot setup in Webots
* **8.2** Pemrograman Dasar Robot Wall-Following - Basic wall-following robot programming
  * Pembacaan Sensor Jarak - Distance sensor reading
  * Kontrol Motor Diferensial - Differential motor control
* **8.3** Implementasi dan Perbandingan Controller - Controller implementation and comparison
  * Bang-Bang Controller untuk Wall-Following - Bang-bang controller for wall-following
  * PID Controller untuk Wall-Following - PID controller for wall-following
  * Tuning PID untuk Wall-Following - PID tuning for wall-following
* **8.4** Analisis Performa dan Troubleshooting - Performance analysis and troubleshooting

## 🛠️ Technologies and Libraries

### Core Python Libraries
* **NumPy** - Numerical computation and array operations
* **Matplotlib** - Data visualization and plotting
* **python-control** - Control systems analysis and design
* **Jupyter Notebook** - Interactive development environment

### Simulation and Robotics
* **Webots** - Professional robot simulator for advanced applications
* **SciPy** - Scientific computing for advanced mathematical operations

### Documentation and Publishing
* **Pandoc** - Document conversion and PDF generation
* **XeLaTeX** - Advanced LaTeX engine for mathematical typesetting
* **Markdown** - Source content format for easy editing

## 🚀 Quick Start Guide

### Prerequisites

To build and work with this book project, you need the following software installed:

#### Essential Requirements
* **Python 3.8+** - Core programming language
* **Git** - Version control system
* **Pandoc 2.11+** - Document conversion engine (required for PDF generation)
* **XeLaTeX** - Advanced LaTeX engine for mathematical typesetting

#### Platform-Specific Installation

**macOS:**
```bash
# Install Homebrew (if not already installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Pandoc
brew install pandoc

# Install MacTeX (includes XeLaTeX)
brew install --cask mactex

# Verify installations
pandoc --version
xelatex --version
```

**Ubuntu/Debian:**
```bash
# Update package manager
sudo apt update

# Install Pandoc
sudo apt install pandoc

# Install TeX Live (includes XeLaTeX)
sudo apt install texlive-full

# Install additional fonts for Indonesian language support
sudo apt install fonts-liberation fonts-dejavu

# Verify installations
pandoc --version
xelatex --version
```

**Windows:**
```bash
# Install Chocolatey (if not already installed)
# Run PowerShell as Administrator and execute:
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Pandoc
choco install pandoc

# Install MiKTeX (includes XeLaTeX)
choco install miktex

# Verify installations
pandoc --version
xelatex --version
```

#### Optional Tools
* **VS Code** - Recommended text editor with Markdown support
* **Jupyter Lab** - For interactive notebook development
* **Webots** - Professional robot simulator (required for Chapter 9)

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/Book-Project-Sistem-Kendali-Python.git
   cd Book-Project-Sistem-Kendali-Python
   ```

2. **Install Python dependencies**:
   ```bash
   # Install from requirements.txt (recommended)
   pip install -r requirements.txt
   
   # Or install manually
   pip install numpy matplotlib scipy jupyter python-control
   ```

3. **Install Webots** (for Chapter 9):
   - Download from [Webots official website](https://cyberbotics.com/)
   - Follow installation instructions for your operating system

### Building the Book

The project includes a sophisticated build script that supports multiple output formats:

#### Build Complete Book (All Chapters)
```bash
./build.sh
```
Status: ✅ **Membangun buku lengkap...** (Building complete book...)

#### Build Individual Chapters
```bash
./build.sh 1    # Build Chapter 1 only
./build.sh 3    # Build Chapter 3 only
./build.sh 7    # Build Chapter 7 (PID Controllers) only
```
Status: 📖 **Membangun bab X...** (Building chapter X...)

#### Advanced Build Options

**Build specific chapter ranges**:
```bash
./build.sh 1-3  # Build chapters 1 through 3
./build.sh 6-8  # Build chapters 6 through 8
```

**Force rebuild** (ignore existing PDFs):
```bash
./build.sh --force
```

**Debug mode** (verbose output):
```bash
./build.sh --debug
```

### Build System Features

The `build.sh` script provides:

* **Intelligent Dependency Checking** - Only rebuilds when source files change
* **Indonesian Language Support** - Status messages in Bahasa Indonesia with emoji indicators
* **Professional Typography** - XeLaTeX engine with custom book template
* **Modular Building** - Support for individual chapters or ranges
* **Error Handling** - Comprehensive error reporting and validation
* **Metadata Integration** - Automatic inclusion of book metadata and styling

## 📁 Repository Structure

```
Book-Project-Sistem-Kendali-Python/
├── 📄 book.pdf                      # Generated complete book (if built)
├── 🔧 build.sh                      # Main build script (73 lines)
├── 📄 LICENSE                       # MIT License file
├── 📄 README.md                     # This comprehensive guide
├── 📄 requirements.txt              # Python dependencies list
├── 📂 notebook/                     # Jupyter notebook examples
│   ├── notebook-03.ipynb            # Chapter 3 interactive examples (System Modeling)
│   ├── notebook-04.ipynb            # Chapter 4 interactive examples (Time Domain Analysis)
│   ├── notebook-05.ipynb            # Chapter 5 interactive examples (Frequency Domain Analysis)
│   ├── notebook-06.ipynb            # Chapter 6 interactive examples (Stability Analysis)
│   ├── notebook-07.ipynb            # Chapter 7 interactive examples (PID Controllers)
│   └── notebook-08.ipynb            # Chapter 8 interactive examples (Robot Simulation)
├── 📂 src/                          # Source markdown files
│   ├── 📂 01/                       # Chapter 1: Pengenalan Sistem Kendali
│   │   ├── 01-01.md                 # Section 1.1: Dasar-dasar Sistem Kendali
│   │   ├── 01-02.md                 # Section 1.2: Simulasi dan Implementasi
│   │   ├── 01-03.md                 # Section 1.3: Python untuk Sistem Kendali
│   │   ├── 01-04.md                 # Section 1.4: Ruang Lingkup dan Organisasi
│   │   └── 📂 image/                # Chapter 1 images and assets
│   │       └── default.png          # Default example image
│   ├── 📂 02/                       # Chapter 2: Persiapan Simulasi Python
│   │   ├── 02-01.md → 02-06.md      # 6 sections on Python setup and libraries
│   ├── 📂 03/                       # Chapter 3: Pemodelan Sistem
│   │   ├── 03-01.md → 03-05.md      # 5 sections on system modeling
│   ├── 📂 04/                       # Chapter 4: Analisis Domain Waktu
│   │   ├── 04-01.md → 04-04.md      # 4 sections on time domain analysis
│   ├── 📂 05/                       # Chapter 5: Analisis Domain Frekuensi
│   │   ├── 05-01.md → 05-02.md      # 2 sections on frequency domain analysis
│   ├── 📂 06/                       # Chapter 6: Analisis Kestabilan Sistem
│   │   ├── 06-01.md → 06-04.md      # 4 sections on stability analysis
│   ├── 📂 07/                       # Chapter 7: Sistem Kendali PID
│   │   ├── 07-01.md → 07-03.md      # 3 sections on PID controllers
│   └── 📂 08/                       # Chapter 8: Simulasi Robot dengan PID
│       ├── 08-01.md → 08-04.md      # 4 sections on Webots simulation
└── 📂 template/                     # Book template and styling
    ├── eisvogel.latex               # Custom LaTeX template (Eisvogel-based)
    └── metadata.yaml                # Book metadata and configuration
```

## 💻 Python Code Examples

The book includes extensive practical examples:

### Basic Control System Analysis
```python
import numpy as np
import matplotlib.pyplot as plt
from control import tf, step_response, bode_plot

# Create transfer function
G = tf([1], [1, 2, 1])

# Generate step response
t, y = step_response(G)

# Plot results
plt.figure(figsize=(10, 6))
plt.plot(t, y)
plt.title('Step Response')
plt.xlabel('Time (s)')
plt.ylabel('Amplitude')
plt.grid(True)
plt.show()
```

### PID Controller Implementation
```python
import numpy as np
from control import tf, feedback, step_response

def pid_controller(kp, ki, kd):
    """Create PID controller transfer function"""
    s = tf('s')
    return kp + ki/s + kd*s

# Plant transfer function
plant = tf([1], [1, 10, 20])

# Design PID controller
controller = pid_controller(kp=5, ki=1, kd=0.1)

# Closed-loop system
closed_loop = feedback(controller * plant, 1)

# Analyze performance
t, y = step_response(closed_loop)
```

### Webots Robot Control
```python
from controller import Robot, DistanceSensor, Motor

class WallFollowingRobot:
    def __init__(self):
        self.robot = Robot()
        self.setup_sensors()
        self.setup_motors()
        self.pid = PIDController(kp=1.0, ki=0.1, kd=0.01)
    
    def run(self):
        while self.robot.step(64) != -1:
            distance = self.read_wall_distance()
            control_signal = self.pid.compute(distance, target=0.3)
            self.apply_control(control_signal)
```

## 📝 Writing Tutorial

This section provides a comprehensive guide for writing content in this book project using Markdown with Pandoc extensions. The book uses advanced Pandoc features for professional typography, cross-references, and Indonesian language support.

### Content Writing Guidelines

This book project uses **Pandoc-flavored Markdown** with special extensions for academic and technical writing. All content should be written following these conventions to ensure consistent formatting and professional output in the generated PDF.

#### File Organization
- Each chapter is organized in numbered directories (`01/`, `02/`, etc.)
- Sections are individual Markdown files (`01-01.md`, `01-02.md`, etc.)
- Images and assets are stored in `image/` subdirectories within each chapter
- The build system automatically combines all files in order

#### Writing Style Guidelines
- **Language**: Content should be written in **Indonesian (Bahasa Indonesia)**
- **Technical Terms**: Use appropriate Indonesian technical terminology with English equivalents in parentheses when first introduced
- **Code Comments**: Python code should include Indonesian comments for educational clarity
- **Consistency**: Maintain consistent terminology throughout all chapters

#### Cross-References and Citations

Pandoc supports sophisticated cross-referencing for figures, tables, equations, and sections. This is essential for academic and technical writing.

**Referencing figures and tables:**
```markdown
[@fig:contoh] merupakan contoh gambar yang menunjukkan sistem kendali dasar.
[@tbl:contoh] adalah contoh tabel yang merinci komponen sistem.
```

**Referencing sections:**
```markdown
Seperti dijelaskan di @sec:pengenalan, sistem kendali terdiri dari beberapa komponen.
```

**Multiple references:**
```markdown
Gambar [@fig:step-response; @fig:bode-plot] menunjukkan analisis sistem.
```

#### Images and Figures

Images in this book project use Pandoc's advanced figure syntax for professional layout and cross-referencing.

**Basic image syntax:**
```markdown
![Contoh ini Caption Gambar](src/01/image/default.png){#fig:contoh width="50%"}
```

**Advanced image options:**
```markdown
![Diagram Blok Sistem Kendali PID](src/08/image/pid-block-diagram.png){#fig:pid-diagram width="80%" height="6cm"}
```

**Figure placement and sizing:**
- `width="50%"` - Set width as percentage of text width
- `height="6cm"` - Set specific height in centimeters
- `#fig:label` - Create referenceable label for cross-references

**Image organization:**
- Store images in chapter-specific `image/` directories
- Use descriptive filenames (e.g., `pid-step-response.png`)
- Prefer PNG for diagrams, JPG for photographs
- Maintain consistent resolution (300 DPI for print quality)

#### Tables and Data Presentation

Tables in this book use Pandoc's table syntax with proper captions and cross-referencing support.

**Basic table syntax:**
```markdown
| Komponen | Deskripsi Singkat                            |
| -------- | -------------------------------------------- |
| Sensor   | Mengukur proses                              |
| Kontrol  | Mengolah error dan menghasilkan aksi kendali |
| Aktuator | Menggerakkan plant sesuai sinyal kendali     |

: Contoh ini Caption Tabel {#tbl:contoh}
```

**Advanced table formatting:**
```markdown
| Parameter | Simbol | Satuan | Nilai Tipikal |
|-----------|:------:|--------|:-------------:|
| Gain Proporsional | $K_p$ | - | 1.0 - 10.0 |
| Gain Integral | $K_i$ | 1/s | 0.1 - 1.0 |
| Gain Derivatif | $K_d$ | s | 0.01 - 0.1 |

: Parameter Kontroler PID {#tbl:pid-parameters}
```

**Table guidelines:**
- Use descriptive captions that explain the table content
- Include units in headers when applicable
- Use mathematical notation in tables ($K_p$, $\omega_n$, etc.)
- Align numerical data consistently (center or right-align)
- Keep tables readable - break complex tables into smaller ones

#### Special Callout Boxes

The book template supports special callout boxes for enhanced learning. Use these to highlight important information, tips, and warnings.

**Note boxes** (informational content):
```markdown
::: note
Sistem kendali PID adalah salah satu kontroler yang paling banyak digunakan dalam industri karena kesederhanaannya dan efektivitas untuk sebagian besar aplikasi.
:::
```

**Tip boxes** (helpful suggestions):
```markdown
::: tip
Gunakan `python-control` library untuk analisis sistem yang lebih kompleks. Library ini menyediakan fungsi-fungsi advanced untuk desain kontroler.
:::
```

**Warning boxes** (potential issues):
```markdown
::: warning
Hati-hati dengan nilai gain derivatif yang terlalu tinggi karena dapat menyebabkan noise amplification dan ketidakstabilan sistem.
:::
```

**Caution boxes** (careful consideration needed):
```markdown
::: caution
Pastikan sistem plant sudah dimodelkan dengan akurat sebelum mendesain kontroler, karena model yang tidak tepat akan menghasilkan performa kontroler yang buruk.
:::
```

**Important boxes** (critical information):
```markdown
::: important
Selalu lakukan tuning PID secara sistematis menggunakan metode seperti Ziegler-Nichols atau Cohen-Coon untuk mendapatkan hasil yang optimal.
:::
```

#### Mathematical Equations

This book extensively uses LaTeX mathematical notation for control systems theory. Pandoc provides excellent support for both inline and display mathematics.

**Inline mathematics** (within text):
```markdown
Sinyal error $e(t) = \mathrm{SP} - \mathrm{PV}$ merupakan dasar dari sistem kendali feedback.
```

**Display mathematics** (centered equations):
```markdown
$$
u(t) = K_p e(t) + K_i \int_0^t e(\tau) d\tau + K_d \frac{de(t)}{dt}
$$
```

**Numbered equations** for referencing:
```markdown
$$
G(s) = \frac{Y(s)}{U(s)} = \frac{K}{s^2 + 2\zeta\omega_n s + \omega_n^2}
$$ {#eq:second-order}
```

**Common control systems notation:**
- Transfer functions: $G(s)$, $H(s)$, $C(s)$
- Laplace variable: $s$
- Time variable: $t$
- Frequency: $\omega$ (omega)
- Damping ratio: $\zeta$ (zeta)
- Natural frequency: $\omega_n$ (omega_n)
- PID gains: $K_p$, $K_i$, $K_d$

**Complex equations example:**
```markdown
$$
\begin{align}
T(s) &= \frac{C(s)G(s)}{1 + C(s)G(s)H(s)} \\
\text{dimana: } C(s) &= K_p + \frac{K_i}{s} + K_d s
\end{align}
$$
```

#### Code Programming and Implementation

The book includes extensive Python code examples for control systems implementation. Follow these guidelines for consistent code presentation.

**Inline code** (short snippets):
```markdown
Gunakan fungsi `control.tf()` untuk membuat transfer function atau `numpy.linspace()` untuk membuat array waktu.
```

**Code blocks** with syntax highlighting:
````markdown
```python
import numpy as np
import matplotlib.pyplot as plt
from control import tf, step_response

def analyze_system(numerator, denominator):
    """
    Analisis respon step dari sistem dengan transfer function.
    
    Parameters:
    numerator (list): Koefisien pembilang transfer function
    denominator (list): Koefisien penyebut transfer function
    
    Returns:
    tuple: Waktu dan respon sistem
    """
    # Buat transfer function
    system = tf(numerator, denominator)
    
    # Hitung respon step
    time, response = step_response(system)
    
    # Plot hasil
    plt.figure(figsize=(10, 6))
    plt.plot(time, response, 'b-', linewidth=2)
    plt.title('Respon Step Sistem')
    plt.xlabel('Waktu (detik)')
    plt.ylabel('Amplitudo')
    plt.grid(True, alpha=0.3)
    plt.show()
    
    return time, response

# Contoh penggunaan
num = [1]
den = [1, 2, 1]
t, y = analyze_system(num, den)
```
````

**Code documentation guidelines:**
- Write docstrings in Indonesian for educational clarity
- Include parameter descriptions and return values
- Use descriptive variable names in Indonesian when appropriate
- Add comments explaining complex control systems concepts
- Include visualization code to help readers understand results

**Common code patterns in the book:**
- Import statements for `numpy`, `matplotlib`, `control`
- Transfer function creation and manipulation
- Time and frequency domain analysis
- PID controller implementation
- System simulation and visualization

#### Text Formatting, Links, and Lists

Use consistent formatting throughout the book for professional appearance and readability.

**Text formatting:**
```markdown
**Bold text** untuk penekanan konsep penting
*Italic text* untuk terminologi teknis atau penekanan ringan
`Inline code` untuk nama fungsi, variabel, atau perintah
```

**Links and references:**
```markdown
[Python Control Systems Library](https://python-control.readthedocs.io/) - dokumentasi lengkap
[Webots Robot Simulator](https://cyberbotics.com/) - simulator robotika profesional

Referensi internal: lihat @sec:pengenalan untuk penjelasan dasar
```

**Unordered lists** (gunakan * konsisten):
```markdown
* Konsep dasar sistem kendali feedback
* Implementasi kontroler PID dalam Python  
* Analisis kestabilan dan performa sistem
* Aplikasi praktis dalam robotika
```

**Ordered lists** untuk langkah-langkah:
```markdown
1. Install Python dan library yang diperlukan
2. Buat model matematis dari sistem plant
3. Desain kontroler PID menggunakan python-control
4. Simulasikan sistem closed-loop
5. Analisis performa dan lakukan tuning
```

**Nested lists** untuk hierarki informasi:
```markdown
* Sistem Kendali Dasar
  * Sistem loop terbuka (open-loop)
  * Sistem loop tertutup (closed-loop)
  * Karakteristik feedback
* Kontroler PID
  * Proporsional (P): respons cepat
  * Integral (I): eliminasi steady-state error
  * Derivatif (D): memperbaiki transient response
```

## 📚 Chapter Highlights

### Mathematical Foundations
* **System Modeling** - Comprehensive coverage of transfer functions and state-space representation
* **Time Domain Analysis** - Complete analysis of step, impulse, and ramp responses
* **Frequency Domain** - Bode plots, Nyquist diagrams, and frequency response analysis
* **Stability Analysis** - Pole-zero analysis, Routh-Hurwitz criterion, and error analysis

### Practical Implementation
* **Python Libraries** - Hands-on experience with NumPy, Matplotlib, and python-control
* **Jupyter Notebooks** - Interactive learning with immediate feedback and experimentation
* **Real-world Simulations** - Webots robotics applications for advanced controller implementation

### Professional Development
* **Industry Standards** - Best practices for control system design and implementation
* **Performance Analysis** - Systematic approaches to system optimization and error evaluation
* **Documentation** - Professional technical writing and code documentation

## 🔧 Build Configuration

The book uses advanced Pandoc configuration with:

* **XeLaTeX Engine** - Superior mathematical typesetting and Indonesian font support
* **Custom Template** - Professional book layout with consistent styling
* **Metadata Integration** - Automatic title pages, author information, and formatting
* **Image Processing** - High-quality figure rendering and placement
* **Cross-references** - Automatic section numbering and internal links

### Metadata Configuration (template/metadata.yaml)
```yaml
title: "Dasar Sistem Kendali dan Implementasinya dengan Python"
subtitle: "Simulasi dan Aplikasi Praktis dengan Jupyter Notebook, python-control dan Webots untuk Sistem Kendali PID"
author: 
  - "Author 1"
  - "Author 2" 
  - "Author 3"
  - "Author 4"
lang: "id-ID"
papersize: "a5"
geometry: "margin=2cm"
```

## 🎯 Educational Outcomes

Upon completion, readers will have:

### Theoretical Understanding
* **Control Systems Fundamentals** - Deep knowledge of feedback control principles
* **Mathematical Modeling** - Ability to represent physical systems mathematically
* **Analysis Techniques** - Proficiency in time and frequency domain analysis

### Practical Skills
* **Python Programming** - Advanced skills in scientific computing for control applications
* **Simulation Tools** - Experience with professional robotics simulation environments
* **Real-world Applications** - Hands-on experience with industrial control problems

### Professional Competencies
* **Problem-solving** - Systematic approaches to control system design challenges
* **Technical Communication** - Ability to document and present control system solutions
* **Industry Readiness** - Skills directly applicable to engineering careers

## 🌟 Unique Advantages

### Language and Cultural Context
* **Indonesian Language** - Native language instruction for Indonesian learners
* **Local Examples** - Control applications relevant to Indonesian industry
* **Cultural Sensitivity** - Teaching methods adapted to Indonesian educational contexts

### Modern Tools Integration
* **Latest Libraries** - Up-to-date Python ecosystem for control systems
* **Industry Standards** - Tools and methods used in professional practice
* **Open Source** - Accessible and modifiable for educational institutions

### Comprehensive Coverage
* **Theory to Practice** - Seamless integration of mathematical concepts and implementation
* **Progressive Learning** - Carefully structured content building from basics to advanced topics
* **Multiple Perspectives** - Various approaches to the same concepts for deeper understanding

## 🤝 Contributing

We welcome contributions to improve this educational resource:

### Content Contributions
* **Error Corrections** - Help us identify and fix technical or linguistic errors
* **Example Additions** - Contribute new Python examples or case studies
* **Translation Improvements** - Enhance Indonesian technical terminology

### Technical Contributions
* **Build System** - Improve the Pandoc build process or add new features
* **Template Enhancements** - Enhance the LaTeX template for better typography
* **Tool Integration** - Add support for additional Python libraries or simulation tools

### How to Contribute
1. **Fork the repository** and create a feature branch
2. **Make your changes** with clear, descriptive commit messages
3. **Test your changes** by building the affected chapters
4. **Submit a pull request** with a detailed description of your improvements

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

The content is designed for educational use and can be freely used by:
* **Educational Institutions** for teaching control systems courses
* **Students** for learning and research purposes
* **Professionals** for skill development and reference

## 📞 Contact and Support

### Technical Support
* **Issues**: Report bugs or technical problems via GitHub Issues
* **Discussions**: Join conversations about content and improvements
* **Feature Requests**: Suggest new features or enhancements

### Educational Support
* **Teaching Materials**: Request additional resources for classroom use
* **Curriculum Integration**: Guidance on incorporating this book into courses
* **Professional Development**: Information about control systems career paths

### Community
* **Study Groups**: Connect with other learners using this material
* **Professional Networks**: Join Indonesian control systems engineering communities
* **Industry Connections**: Bridge between academic learning and industry practice

---

## 🏆 Acknowledgments

Special thanks to:
* **Indonesian Control Systems Community** for inspiration and feedback
* **Python Control Systems Developers** for creating excellent open-source tools
* **Webots Team** for providing world-class robotics simulation capabilities
* **Pandoc and LaTeX Communities** for powerful document processing tools

---

*This book represents a significant contribution to Indonesian technical education, providing modern, practical control systems instruction using the latest Python tools and methodologies. Whether you're a student beginning your journey in control systems or a professional seeking to modernize your skills, this comprehensive resource will guide you from fundamental concepts to advanced practical applications.*

**🚀 Start your control systems journey today!** 📖✨

#### Advanced Features and Best Practices

**Section headers with labels** for cross-referencing:
```markdown
# Bab 3: Pemodelan Sistem {#sec:pemodelan}

## 3.1 Konsep Dasar Pemodelan {#sec:konsep-dasar}
```

**Bibliography and citations** (if using):
```markdown
Menurut [@franklin2015], sistem kendali feedback memberikan...

Referensi: Franklin, G. F., Powell, J. D., & Emami-Naeini, A. (2015). 
*Feedback Control of Dynamic Systems*. Pearson.
```

**File organization best practices:**
- One section per file (e.g., `03-01.md`, `03-02.md`)
- Use descriptive filenames that match section titles
- Keep image files organized in chapter subdirectories
- Maintain consistent naming conventions

**Writing tips for this project:**
- Write in clear, educational Indonesian
- Explain complex concepts step by step
- Include practical examples for every theoretical concept
- Use consistent terminology throughout all chapters
- Add visual aids (diagrams, plots) to illustrate concepts
- Test all Python code examples before including them

**Quality assurance:**
- Build individual chapters regularly to check formatting
- Verify all cross-references work correctly
- Ensure mathematical equations render properly
- Test code examples in Jupyter notebooks
- Proofread for Indonesian grammar and technical accuracy

This tutorial covers the essential Markdown and Pandoc features used throughout the book. For more advanced LaTeX formatting or specific questions about the build system, refer to the Pandoc documentation or the template files in the `template/` directory.
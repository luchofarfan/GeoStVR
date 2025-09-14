# GeoStVR v21 - MVP

## Project Overview
GeoStVR v21 is a simplified augmented reality application that overlays a 3D cylindrical figure on the camera feed, enabling users to match real-world cylinders and perform geometric measurements.

## Technical Stack

### Core Technologies
- **Three.js r128** - 3D graphics rendering
- **WebGL** - Hardware-accelerated graphics
- **HTML5/CSS3** - User interface and styling
- **Vanilla JavaScript** - Application logic

### Development Tools
- **HTTP Server** - Local development server (port 3000)
- **Package Manager** - npm for dependency management

## Features

### Core Functionality
1. **3D Cylinder Overlay**
   - Transparent cylindrical figure centered on screen
   - Configurable dimensions (radius: 3.25 units, height: 30 units)
   - Semi-transparent rendering for real-world visibility

2. **Camera Integration**
   - Real-time camera feed display
   - 3D overlay positioned over camera view
   - Responsive design for various screen sizes

3. **Measurement Tools**
   - Point placement system (up to 3 points)
   - Line drawing capabilities
   - Angle measurement functionality
   - Distance calculations

4. **Interactive Controls**
   - Point selection via cylinder interaction
   - BOH (Bore Hole) movement controls
   - Color-coded measurement points (yellow/red)
   - Clear/reset functionality

### User Interface
- Minimalist control panel overlay
- Real-time point counter display
- Responsive button controls
- Dark theme for optimal visibility

## Project Scope

### MVP Deliverables
- Functional 3D cylinder overlay
- Camera integration with transparency
- Basic measurement tools (points, lines, angles)
- Image capture capability
- Responsive web interface

### Technical Requirements
- Cross-platform compatibility (web-based)
- Real-time 3D rendering
- Camera access permissions
- Touch and mouse input support
- Performance optimization for mobile devices

## Project Structure
```
GeoStVR_v21/
├── package.json          # Project configuration and scripts
├── README.md            # Project documentation
├── www/                 # Web application files
│   └── index.html      # Main application entry point
└── GeoStAR             # Additional project files
```

## Getting Started

### Prerequisites
- Modern web browser with WebGL support
- Camera access permissions
- Local development environment

### Installation
1. Clone the repository
2. Install dependencies: `npm install`
3. Start development server: `npm start`
4. Open browser to `http://localhost:3000`

### Build
```bash
npm run build
```

## Development Status
- **Current Version**: 2.1.0
- **Phase**: MVP Development
- **Status**: Core functionality implemented, refinement needed

## License
MIT License - See package.json for details

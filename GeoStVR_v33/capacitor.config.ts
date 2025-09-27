import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.geostvr.v33',
  appName: 'GeoStVR v33',
  webDir: 'www',
  server: {
    androidScheme: 'https'
  },
  plugins: {
    Camera: {
      permissions: ['camera']
    },
    Geolocation: {
      permissions: ['location']
    },
    StatusBar: {
      style: 'dark',
      backgroundColor: '#1a1a2e'
    }
  },
  android: {
    buildOptions: {
      keystorePath: undefined,
      keystoreAlias: undefined,
      keystorePassword: undefined,
      keyPassword: undefined
    }
  }
};

export default config;

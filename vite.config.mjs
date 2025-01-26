import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  plugins: [react(), tailwindcss()],
  server: {
    port: 3000,
    historyApiFallback: true, // Enables history SPA routing
  },
  resolve: {
    extensions: ['.mjs', '.js', '.jsx']
  },
  esbuild: {
    loader: 'jsx',
    include: /\.mjs$/,
  },
})

#!/bin/bash
set -e
echo "🔥 FitSup Deals — Build & Deploy"
echo "================================"
cd "$(dirname "$0")"
npm install --silent
npm run build
echo ""
echo "✅ Build complete! Site output: $(pwd)/dist/"
echo "📤 Deploy targets:"
echo "   - Netlify:  npx netlify deploy --prod --dir=dist"
echo "   - Vercel:   npx vercel --prod dist/"
echo "   - Preview:  npx http-server dist/ --port 3000 --host 0.0.0.0"
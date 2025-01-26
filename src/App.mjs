import React from 'react';
import { Routes, Route } from 'react-router-dom';
// Pages
import Page_Home from './app/Page_Home.res.mjs';
import Page_Test from './app/Page_Test.res.mjs';

// Docs
import Docs_Fonts from './app/docs/Docs_Fonts.res.mjs';

export default function App() {
  return (
    <Routes>
      <Route path={"/"} element={<Page_Home />} />
      <Route path={"/test-page"} element={<Page_Test />} />

      {/* Docs */}
      <Route path={"/docs/fonts"} element={<Docs_Fonts />} />

      <Route path={"*"} element={<h1>404 - Page Not Found</h1>} />
    </Routes>
  );
}

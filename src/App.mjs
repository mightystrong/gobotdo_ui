import React from 'react';
import { Routes, Route } from 'react-router-dom';
import Home from './app/Home.res.mjs';
import TestPage from './app/TestPage.res.mjs';

export default function App() {
  return (
    <Routes>
      <Route path={"/"} element={<Home />} />
      <Route path={"/test-page"} element={<TestPage />} />
      <Route path={"*"} element={<h1>404 - Page Not Found</h1>} />
    </Routes>
  );
}

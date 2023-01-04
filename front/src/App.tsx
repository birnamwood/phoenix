import { useEffect } from 'react'
import './App.css'
import { BrowserRouter, Link, Routes, Route } from 'react-router-dom'
import { Home } from './pages/Home'
import { Settings } from './pages/Settings'
const style = { display: 'flex', gap: '8px', padding: '8px' }

export const App = () => {
  useEffect(() => {
    if (window.location.pathname === '/') {
      window.location.replace('/front')
    }
  }, [])

  return (
    <BrowserRouter basename="front">
      <nav style={style}>
        <Link to="/">Home</Link>
        <Link to="/settings">Settings</Link>
        <br />
      </nav>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="settings" element={<Settings />} />
      </Routes>
    </BrowserRouter>
  )
}

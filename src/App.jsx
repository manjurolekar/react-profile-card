import './App.css'
import ProfileCard from './ProfileCard'

function App() {
  return (
    <div className="App">
      <h1>My React Component Task</h1>
      <ProfileCard 
        name="Jane Doe" 
        title="Frontend Developer" 
        bio="I am learning React to build modern, dynamic web applications. This is my assignment submission!"
        imageUrl="https://i.pravatar.cc/150?img=32" 
      />
    </div>
  )
}

export default App
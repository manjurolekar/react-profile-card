
import ProfileCard from "./components/ProfileCard.jsx";
import "./App.css";

export default function App() {
  return (
    <main className="app-container">
      <ProfileCard
        name="Manjunath Ramappa Olekar"
        role="Full-Stack Developer"
        bio="Computer Engineering and IT Infrastructure student who enjoys building modern web applications."
        skills={[
          "HTML",
          "CSS",
          "JavaScript",
          "React",
          "Node.js",
          "Python",
          "SQL",
          "Git & GitHub",
        ]}
        github="https://github.com/manjurolekar"
        linkedin="https://linkedin.com/in/manju-r-olekar-81561338a/"
      />
    </main>
  );
}

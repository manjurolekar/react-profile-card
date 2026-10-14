
import ProfileCard from "./components/ProfileCard.jsx";
import "./App.css";

const profile = {
  name: "Manjunath Ramappa Olekar",
  role: "Full-Stack Developer",
  bio: "Computer Engineering and IT Infrastructure diploma student passionate about building useful web applications, learning modern technologies, and solving real-world problems.",
  skills: [
    "HTML",
    "CSS",
    "JavaScript",
    "React",
    "Node.js",
    "Python",
    "SQL",
    "Git & GitHub",
  ],
  photo: "/profile.jpg",
  github: "https://github.com/manjurolekar",
  linkedin: "https://linkedin.com/in/manju-r-olekar-81561338a/",
  email: "manjunath@example.com",
};

export default function App() {
  return (
    <main className="app-shell">
      <div className="background-orb orb-one" />
      <div className="background-orb orb-two" />

      <div className="page-content">
        <p className="page-eyebrow">MY PERSONAL SPACE</p>
        <ProfileCard {...profile} />
        <p className="page-note">
          Learning every day. Building one project at a time.
        </p>
      </div>
    </main>
  );
}

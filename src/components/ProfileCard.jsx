
import { useState } from "react";

export default function ProfileCard({
  name,
  role,
  bio,
  skills = [],
  github,
  linkedin,
}) {
  const [likes, setLikes] = useState(0);

  return (
    <section className="profile-card">
      <div className="avatar">MO</div>
      <h1>{name}</h1>
      <h3>{role}</h3>
      <p className="bio">{bio}</p>

      <div className="skills">
        {skills.map((skill) => (
          <span key={skill}>{skill}</span>
        ))}
      </div>

      <a className="connect" href={linkedin} target="_blank" rel="noreferrer">
        Connect with me ↗
      </a>

      <div className="socials">
        <a href={github} target="_blank" rel="noreferrer">GitHub</a>
        <a href={linkedin} target="_blank" rel="noreferrer">LinkedIn</a>
      </div>

      <button className="like" onClick={() => setLikes((n) => n + 1)}>
        ♥ Like ({likes})
      </button>

      <footer>Built with React + CSS · ApnoAI Task 2</footer>
    </section>
  );
}

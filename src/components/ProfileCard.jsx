
import { useState } from "react";
import { Github, Linkedin, Heart, ExternalLink } from "lucide-react";
import "./ProfileCard.css";

export default function ProfileCard({
  name,
  role,
  bio,
  skills,
  photo,
  github,
  linkedin,
  email,
}) {
  const [liked, setLiked] = useState(false);

  return (
    <article className="profile-card">
      <div className="card-top">
        <span className="status-dot" />
        <span>AVAILABLE FOR OPPORTUNITIES</span>
      </div>

      <div className="profile-content">
        <div className="photo-ring">
          <img
            className="profile-photo"
            src={photo}
            alt={name}
            onError={(event) => {
              event.currentTarget.style.display = "none";
            }}
          />
          <span className="photo-fallback">
            {name
              .split(" ")
              .map((part) => part[0])
              .slice(0, 2)
              .join("")
              .toUpperCase()}
          </span>
        </div>

        <p className="profile-label">HELLO, I'M</p>
        <h1 className="profile-name">{name}</h1>
        <h2 className="profile-role">{role}</h2>

        <p className="profile-bio">{bio}</p>

        <div className="skills-section">
          <h3>MY TECH STACK</h3>
          <div className="skills-list">
            {skills.map((skill) => (
              <span className="skill-pill" key={skill}>
                {skill}
              </span>
            ))}
          </div>
        </div>

        <a className="connect-button" href={`mailto:${email}`}>
          Let's Connect <ExternalLink size={17} />
        </a>

        <div className="social-links">
          <a
            href={github}
            target="_blank"
            rel="noreferrer"
            aria-label="GitHub profile"
            title="GitHub"
          >
            <Github size={21} />
          </a>

          <a
            href={linkedin}
            target="_blank"
            rel="noreferrer"
            aria-label="LinkedIn profile"
            title="LinkedIn"
          >
            <Linkedin size={21} />
          </a>
        </div>

        <button
          type="button"
          className={`like-button ${liked ? "is-liked" : ""}`}
          onClick={() => setLiked(!liked)}
          aria-pressed={liked}
        >
          <Heart size={18} fill={liked ? "currentColor" : "none"} />
          {liked ? "Liked!" : "Like my profile"}
        </button>
      </div>

      <footer className="profile-footer">
        Built with React + Vite <span>•</span> ApnoAI Task 2
      </footer>
    </article>
  );
}

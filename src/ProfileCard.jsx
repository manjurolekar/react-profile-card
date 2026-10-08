import React, { useState } from 'react';
import './ProfileCard.css';

const ProfileCard = ({ name, title, bio, imageUrl }) => {
  // Bonus: Interactive Counter State
  const [likes, setLikes] = useState(0);

  return (
    <div className="card-container">
      <img src={imageUrl} alt={`${name}'s avatar`} className="profile-img" />
      <h2 className="profile-name">{name}</h2>
      <h4 className="profile-title">{title}</h4>
      <p className="profile-bio">{bio}</p>
      
      {/* Bonus Interactive Button */}
      <button 
        className="like-button" 
        onClick={() => setLikes(likes + 1)}>
        Like ({likes})
      </button>
    </div>
  );
};

export default ProfileCard;
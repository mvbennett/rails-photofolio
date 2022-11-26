import React from "react";

const Photo = (
  {
    img, setSelectedImg, photoCardClass
  }
) => {
  const handleClick = () => {
    setSelectedImg(img);
  };
  return (
    <div className={photoCardClass}>
      <img
        src={img}
        alt=""
        className="sm-photo"
        onClick={handleClick}
      />
    </div>
  );
};

export default Photo;

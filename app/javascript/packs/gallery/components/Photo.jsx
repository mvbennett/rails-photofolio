import React from "react";

const Photo = (
  {
    img, setSelectedImg, photoCardClass
  }
) => {
  const imgUrl = img;
  const handleClick = () => {
    setSelectedImg(img);
  };
  return (
    <div className={photoCardClass}>
      <img
        src={imgUrl}
        alt=""
        className="sm-photo"
        onClick={handleClick}
      />
    </div>
  );
};

export default Photo;

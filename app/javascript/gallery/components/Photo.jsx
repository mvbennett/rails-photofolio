import React from "react";

const Photo = (
  {
    img, setSelectedImg, photoCardClass
  }
) => {
  const imgData = new Image();
  imgData.src = img;
  console.log(imgData);
  // let orientation = 'landscape';
  imgData.onload = () => {
    // console.log(imgData.height);
    // console.log(imgData.width);
    let orientation = imgData.width >= imgData.height ? 'landscape' : 'portrait';
    console.log(orientation);
    console.log(imgData.width / imgData.height);
  };
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

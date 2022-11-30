import React from "react";

const Button = ({valid}) => {
  return valid && (
    <input id="upload-btn" type="submit" name="commit" value="Upload Photo" class="btn btn-primary" data-disable-with="Upload Photo"></input>
  )
}

export default Button;

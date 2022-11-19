// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

const root = document.getElementById("root");
const photos = Object.values(JSON.parse(root.dataset.photos));

const Hello = (photos) => (
  <div><img src={photos.photos[0]} alt="" /></div>
)

Hello.defaultProps = {
  name: 'David'
}

// Hello.propTypes = {
//   name: PropTypes.string
// }

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello photos={photos}/>,
    document.body.appendChild(document.createElement('div')),
  )
})

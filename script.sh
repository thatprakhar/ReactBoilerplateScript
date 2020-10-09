npm init
npm install react
npm install react-dom
npm install react-scripts

line_num=$(grep -n scripts < package.json)
line_num=$(echo $line_num | awk '{print $1}'| cut -d ":" -f 1)


mkdir public
touch ./public/index.html

echo "<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Your React App</title>
</head>

<body>
  <noscript>You need to enable JavaScript to run this app.</noscript>
  <div id=\"root\"></div>
</body>

</html>" > ./public/index.html

mkdir src
touch ./src/index.js
touch ./src/App.js
touch ./src/App.css
touch ./src/index.css

echo "import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

" > ./src/index.js

echo "body {
  margin: 0;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
    'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
    sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

code {
  font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New',
    monospace;
}
" > ./src/index.css

echo "
import React from \"react\";
import \"./App.css\"
function App() {
    return (
        <div></div>
    );
}

export default App;
" > ./src/App.js

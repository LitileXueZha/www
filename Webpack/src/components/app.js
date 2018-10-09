/**
 * Created by 战-不败的象征 on 2017/6/15.
 */
import './css/main.css';
import './laryer/layer.scss';
import './laryer/layer.js';
import tpl from './laryer/layer.html';

const Say = function (s) {
  alert(s);
  document.getElementById('app').innerHTML = tpl;
};

new Say('大');
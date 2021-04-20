//Keyboard Tab

void keyPressed() {//           Beginning of keyPressed
if (keyCode == LEFT) leftKey = true;
if (keyCode == RIGHT) rightKey = true;
}//                             End of keyPressed


void keyReleased() {//          Beginning of keyReleased
if (keyCode == LEFT) leftKey = false;
if (keyCode == RIGHT) rightKey = false;
}//                             End of keyReleased

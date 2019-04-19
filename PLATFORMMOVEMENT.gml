/// @description movement
//How to make your object to move if you develope a platform game
if keyboard_check(vk_left)&& place_free(x-5,y)  //---> place_free function check if your object will collide with any other object wich are flagged as SOLID in cordinates x,y
{
    x-=5;
}

if keyboard_check(vk_right) && place_free(x+5,y)
{
    x+=5;
}

if keyboard_check(vk_up) && !place_free(x,y+1)
{
    vspeed = -10;
}

/*gravity_directipon is a certain built in properties that you can use and set to govern how they look and behave. 
0° = gravity_direction is right
90° = gravity_direction is up
180° = gravity_direction is left
270° = gravity_direction is down ----> you need the 270° if you create a platformer becouse the objects of your game needs to fall down
*/

gravity_direction = 270; // Set the direction of the gravity down

if place_free(x,y+1)
{
    gravity=0.5; //gives the measure of the gravitation
}
else
{
    gravity=0;
}

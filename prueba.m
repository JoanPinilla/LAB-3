%%
rosinit; %Conexi´on con nodo maestro
%%
velPub = rospublisher("/turtle1/cmd_vel","geometry_msgs/Twist"); %Creaci´on publicador
velMsg = rosmessage(velPub); %Creaci´on de mensaje
%%
%import geometry_msgs/Pose.msg;
velMsg.Angular.Z = 1; %Valor del mensaje
velMsg.Linear.X = 0;
send(velPub,velMsg); %Envio
pause(1)
sub=rossubscriber("/turtle1/pose")
pause(1)
actual_pose = receive(sub,3)

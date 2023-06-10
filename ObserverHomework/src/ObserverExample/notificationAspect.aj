package ObserverExample;

import ObserverExample.YoutubeChannel;
public aspect notificationAspect {
	
    pointcut notificationReceived(): call(void ObserverExample.setNotification(String));

    after() returning(String message): notificationReceived() {
        YoutubeChannel subject = (YoutubeChannel) thisJoinPoint.getTarget();
        subject.setNotification(message);
    }
}
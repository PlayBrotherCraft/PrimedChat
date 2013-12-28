include('util.ms')
bind(player_chat, null, array('priority': 'high'), @event, 
	cancel()
	console(_chat_format(@event['player'], @event['message'], 'server'))
)

@CENTRAL_FIREBASE = 'https://brothercraft.firebaseio.com'
firebase_child_added(@CENTRAL_FIREBASE, 'Chat', closure(@data) {
	console(_chat_format(@data['user'], @data['message'], @data['source']))
})
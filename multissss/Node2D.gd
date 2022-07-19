extends Node
var peer
var jogadores = []
func conectou(id):
	texto("Um jogador se conectou e seu id é: " + str(id))

func _on_Button_pressed():
	
	peer = NetworkedMultiplayerENet.new()
	peer.create_server(7777, 3)
	get_tree().network_peer = peer
	get_tree().connect("network_peer_connected",self,"conectou")
	pass # Replace with function body.
func texto(texto):
	$Control/RichTextLabel.text += "\n" + str(texto)
func sincronizar(jogadores):
	for i in jogadores:
	self.jogadores.append()
func iniciar():
	var MeuID = get_tree().get_network_unique_id()
	var jogador = load("res://KinematicBody2D.tscn").instance()
	jogador.end = MeuID
	jogador.set_network_master(MeuID)
	add_child(jogador)
	for i in jogadores:
		var jog = load("res://KinematicBody2D.tscn").instance()
		jog.end = i
		jog.set_network_master(i)
		add_child(jog)
func _on_Button2_pressed():
	
	peer = NetworkedMultiplayerENet.new()
	peer.create_client("192.168.1.6", 7777)
	get_tree().network_peer = peer
	
	
	pass # Replace with function body.

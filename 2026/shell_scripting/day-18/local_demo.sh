#!/bin/bash

function welcome(){
	local var="hello"

}
function bye()
{
	echo "$var"
	echo "trying to call local variable from welcome() function inside bye function"
}
welcome
bye


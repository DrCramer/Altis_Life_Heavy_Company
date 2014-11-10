_onScreenTime = 7;
 
sleep 1; //Wait in seconds before the credits start after player is in-game

_role1 = "Добро пожаловать!!! <br/> Heavy Company Altis Life RPG"; //In red
_role1names = ["http://vk.com/arma3_hc"]; //In white
_role2 = "Правила сервера";
_role2names = ["Вы должны всегда додерживаться правил сервера. Вы можете найти их в группе ВК"]; 
_role3 = "TS3:HEAVY-COMPANY.NO-IP.ORG";
_role3names = ["Заходи в наш TeamSpeak 3"];
_role4 = "Пожалуйста сообщайте";
_role4names = ["Про любие игровые проблемы, баги, или вопросы в группе ВК"];
_role5 = "НЕТ ГЛОБАЛЬНОГО ГОЛОСОВОГО ЧАТА";
_role5names = ["При его использовании вы будете кикнуты, при повторении нарушения будете забенены"];
_role6 = "СЕЙФ ЗОНЫ";
_role6names = ["Не воровать <br/> Не оглушать <br/> НЕ СТРЕЛЯТЬ <br/> Не носить оружие в руках! <br/> Вы были предупреждены!!!"];
_role7 = "Основы управления в Altis Life";
_role7names = ["Windows Key - Действие/Собирать<br/>Y Key - Меню игрока <br/> SHIFT+H - Спрятать оружие <br/> CTRL+H - Достать оружие <br/> SHIFT+SPACE - Прижок"];
 
{
	sleep 2;
	_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='.70' color='#ff0000' align='right'>%1<br/></t>", _memberFunction]; //Changes colours
	_finalText = _finalText + "<t size='0.60' color='#ffffff' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";
	_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
	_finalText,
	[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
	[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
	_onScreenTime,
	0.5
] spawn BIS_fnc_dynamicText;
	sleep (_onScreenTime);
} forEach [
	//The list below should have exactly the same amount of roles as the list above
	[_role1, _role1names],
	[_role2, _role2names],
	[_role3, _role3names],
	[_role4, _role4names],
	[_role5, _role5names],
	[_role6, _role6names],
	[_role7, _role7names]
];
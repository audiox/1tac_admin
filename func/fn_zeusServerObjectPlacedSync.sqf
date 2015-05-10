private["_curator","_placed"];
_curator = _this select 0;
_placed = _this select 1;

if (local _placed) then {
    if({!isNil _x} count ["f_param_AISkill_BLUFOR","f_param_AISkill_INDP","f_param_AISkill_OPFOR"] > 0) then {
        {
            [_x] call f_fnc_setAISkill;
        } forEach crew (_placed);
    };
};

{   
    if (_x getVariable ["SNIP_ADMIN",false]) then {
        _x addCuratorEditableObjects [[_placed],true];
    };
} forEach (allCurators);
nil   
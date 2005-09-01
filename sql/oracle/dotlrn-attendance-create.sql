--
declare
	foo integer;
begin
	-- create the implementation
	foo := acs_sc_impl.new (
		impl_contract_name => 'dotlrn_applet',
		impl_name => 'dotlrn_attendance',
		impl_pretty_name => 'dotlrn_attendance',
		impl_owner_name => 'dotlrn_attendance'
	);

	-- add all the hooks

	-- GetPrettyName
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'GetPrettyName',
	       'dotlrn_attendance::get_pretty_name',
	       'TCL'
	);

	-- AddApplet
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'AddApplet',
	       'dotlrn_attendance::add_applet',
	       'TCL'
	);

	-- RemoveApplet
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'RemoveApplet',
	       'dotlrn_attendance::remove_applet',
	       'TCL'
	);

	-- AddAppletToCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'AddAppletToCommunity',
	       'dotlrn_attendance::add_applet_to_community',
	       'TCL'
	);

	-- RemoveAppletFromCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'RemoveAppletFromCommunity',
	       'dotlrn_attendance::remove_applet_from_community',
	       'TCL'
	);

	-- AddUser
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'AddUser',
	       'dotlrn_attendance::add_user',
	       'TCL'
	);

	-- RemoveUser
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'RemoveUser',
	       'dotlrn_attendance::remove_user',
	       'TCL'
	);

	-- AddUserToCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'AddUserToCommunity',
	       'dotlrn_attendance::add_user_to_community',
	       'TCL'
	);

	-- RemoveUserFromCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'RemoveUserFromCommunity',
	       'dotlrn_attendance::remove_user_from_community',
	       'TCL'
	);

    -- AddPortlet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_attendance',
        impl_operation_name => 'AddPortlet',
        impl_alias => 'dotlrn_attendance::add_portlet',
        impl_pl => 'TCL'
    );

    -- RemovePortlet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_attendance',
        impl_operation_name => 'RemovePortlet',
        impl_alias => 'dotlrn_attendance::remove_portlet',
        impl_pl => 'TCL'
    );

    -- Clone
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_attendance',
        impl_operation_name => 'Clone',
        impl_alias => 'dotlrn_attendance::clone',
        impl_pl => 'TCL'
    );

    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_attendance',
        impl_operation_name => 'ChangeEventHandler',
        impl_alias => 'dotlrn_attendance::change_event_handler',
        impl_pl => 'TCL'
    );

	-- Add the binding
	acs_sc_binding.new (
	    contract_name => 'dotlrn_applet',
	    impl_name => 'dotlrn_attendance'
	);
end;
/
show errors


@dotlrn-attendance-admin-portlet-create.sql
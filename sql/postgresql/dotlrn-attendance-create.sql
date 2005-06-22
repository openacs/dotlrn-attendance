
-- create the implementation

select acs_sc_impl__new (
		'dotlrn_applet',
		'dotlrn_attendance',
		'dotlrn_attendance'
);


-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'GetPrettyName',
	       'dotlrn_attendance::get_pretty_name',
	       'TCL'
);

-- AddApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'AddApplet',
	       'dotlrn_attendance::add_applet',
	       'TCL'
);

-- RemoveApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'RemoveApplet',
	       'dotlrn_attendance::remove_applet',
	       'TCL'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'AddAppletToCommunity',
	       'dotlrn_attendance::add_applet_to_community',
	       'TCL'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'RemoveAppletFromCommunity',
	       'dotlrn_attendance::remove_applet_from_community',
	       'TCL'
);

-- AddUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'AddUser',
	       'dotlrn_attendance::add_user',
	       'TCL'
);

-- RemoveUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'RemoveUser',
	       'dotlrn_attendance::remove_user',
	       'TCL'
);

-- AddUserToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'AddUserToCommunity',
	       'dotlrn_attendance::add_user_to_community',
	       'TCL'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_attendance',
	       'RemoveUserFromCommunity',
	       'dotlrn_attendance::remove_user_from_community',
	       'TCL'
);

-- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_attendance',
        'AddPortlet',
        'dotlrn_attendance::add_portlet',
        'TCL'
);

-- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_attendance',
        'RemovePortlet',
        'dotlrn_attendance::remove_portlet',
        'TCL'
);

-- Clone
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_attendance',
        'Clone',
        'dotlrn_attendance::clone',
        'TCL'
);

select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_attendance',
        'ChangeEventHandler',
        'dotlrn_attendance::change_event_handler',
        'TCL'
);

-- Add the binding
select acs_sc_binding__new (
	    'dotlrn_applet',
	    'dotlrn_attendance'
);

\i dotlrn-attendance-admin-portlet-create.sql

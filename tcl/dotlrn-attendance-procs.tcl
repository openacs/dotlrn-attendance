ad_library {
    
    Procs to set up the dotLRN attendance applet
    
    @author Hamilton Chua (hamilton.chua@gmail.com)
    @version $Id$

}

namespace eval dotlrn_attendance {

    ad_proc -public get_pretty_name {
    } {
        get the pretty name
    } {
        return "Attendance"
    }

    ad_proc -public applet_key {} {
        return "dotlrn_attendance"
    }

    ad_proc -public my_package_key {
    } {
        What's my package key?
    } {
        return "dotlrn-attendance"
    }

    ad_proc -public package_key {
    } {
        What package is associated with this applet?
    } {
        return "attendance"
    }

    ad_proc -public add_applet {
    } {
        Add the attendance applet to dotlrn - one time init - must be repeatable!
    } {
        dotlrn_applet::add_applet_to_dotlrn -applet_key [applet_key] -package_key [my_package_key]
    }

    ad_proc -public remove_applet {
        community_id
        package_id
    } {
        remove the applet
    } {
        ad_return_complaint 1 "[applet_key] remove_applet not implimented!"
    }

    ad_proc -public add_applet_to_community {
        community_id
    } {
        Add the attendance applet to a specifc community
    } {
        set portal_id [dotlrn_community::get_portal_id \
                           -community_id $community_id
        ]

        # create the package instance (all in one, I've mounted it)
        set package_id [dotlrn::instantiate_and_mount \
                            $community_id \
                            [package_key]
        ]
        # return the package_id
        return $package_id
    }

    ad_proc -public remove_applet_from_community {
        community_id
    } {
        Drops the attendance applet from the given community
    } {
        ad_return_complaint 1 "[applet_key] remove_applet_from_community not implimented!"
    }

    ad_proc -public add_user {
        user_id
    } {
        For one time user-specfic init
    } {
        # noop
    }

    ad_proc -public remove_user {
        user_id
    } {
        Remove the user from dotlrn.
    } {
        # noop
    }

    ad_proc -public add_user_to_community {
        community_id
        user_id
    } {
        Called when a user is added to a specific dotlrn community
    } {
	# noop
    }

    ad_proc -public remove_user_from_community {
        community_id
        user_id
    } {
        Remove a user from a community
    } {
	# noop
    }

    ad_proc -public add_portlet {
        portal_id
    } {
        A helper proc to add the underlying portlet to the given portal.

        @portal_id
    } {
	# noop
    }

    ad_proc -public add_portlet_helper {
        portal_id
        args
    } {
        This does the call to add the portlet to the given portal.
        Params for the portlet are set by the calllers.

        @param portal_id
        @param args An ns_set
    } {
	#noop
    }

    ad_proc -public remove_portlet {
        portal_id
        args
    } {
        A helper proc to remove the underlying portlet from the given portal.

        @param portal_id
        @param args An ns_set
    } {
	#noop
    }

    ad_proc -public clone {
        old_community_id
        new_community_id
    } {
        Clone this applet's content from the old community to the new one
    } {
        ns_log notice "Cloning: [applet_key]"
        set new_package_id [add_applet_to_community $new_community_id]
        set old_package_id [dotlrn_community::get_applet_package_id \
            -community_id $old_community_id \
            -applet_key [applet_key]
        ]

        db_exec_plsql call_attendance_clone {}
        return $new_package_id
    }

    ad_proc -public change_event_handler {
        community_id
        event
        old_value
        new_value
    } { 
        listens for the following events: 
    } { 
    }   

}

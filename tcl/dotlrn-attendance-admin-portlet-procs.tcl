ad_library {

    Procedures to support attendance admin portlets

    @creation-date May 2005
    @author hamilton.chua@gmail.com
    @version $Id$
}

namespace eval dotlrn_attendance_admin_portlet {

    ad_proc -private get_my_name {
    } {
	return "dotlrn_attendance_admin_portlet"
    }

    ad_proc -public get_pretty_name {
    } {
	return "Attendance Administration"
    }

    ad_proc -private my_package_key {
    } {
        return "dotlrn-attendance"
    }

    ad_proc -public link {
    } {
        return ""
    }

    ad_proc -public add_self_to_page {
	{-portal_id:required}
        {-package_id:required}
    } {
	Adds a attendance admin PE to the admin portal

        @return new element_id
    } {
        return [portal::add_element_parameters \
            -portal_id $portal_id \
            -portlet_name [get_my_name] \
            -pretty_name [get_pretty_name] \
            -key package_id \
            -value $package_id
        ]
    }

    ad_proc -public remove_self_from_page {
        {-portal_id:required}
    } {
        Removes the attendance admin PE from the portal
    } {
        portal::remove_element \
            -portal_id $portal_id \
            -portlet_name [get_my_name]
    }

    ad_proc -public show {
	cf
    } {
    } {
        portal::show_proc_helper \
            -package_key [my_package_key] \
            -config_list $cf \
            -template_src "dotlrn-attendance-admin-portlet"
    }

    ad_proc -public edit {
        cf
    } {
    } {
	return ""
    }

}

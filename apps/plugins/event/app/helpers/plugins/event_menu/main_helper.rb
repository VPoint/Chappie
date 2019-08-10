module class Plugins::EventMenu::AdminController < CamaleonCms::Apps::PluginsAdminController
  def event_admin_before_load
    # add menus
    sub_items1 = [
        {icon: "list", title: 'List of my Events', url: '#url_path_here'},
        {icon: "plus", title: 'New Event', url: '#url_path_to_new_here'}
    ]

    # add menus after certain menu
    admin_menu_insert_menu_after("content", "event_menu", {icon: 'briefcase', title: 'My Menu Group', url: "", items: sub_items1})

  end

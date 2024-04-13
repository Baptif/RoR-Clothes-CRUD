module ApplicationHelper
    def nav_link_class(*paths)
        "text-white text-lg ml-5 #{'underline' if paths.any? { |path| current_page?(path) }}"
    end
end

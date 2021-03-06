metadata    :name        => "SimpleRPC Agent For PUPPI Commands",
            :description => "Agent to query PUPPI commands via MCollective", 
            :author      => "Al @ Lab42 - Cloned from R.I.Pienaar nrpe agent",
            :license     => "Apache License 2.0",
            :version     => "1.2",
            :url         => "http://www.example42.com/",
            :timeout     => 600


action "check", :description => "Run puppi check" do
    display :always

    input :project,
          :prompt      => "Project",
          :description => "PUPPI project",
          :type        => :string,
          :validation  => '^[a-zA-Z0-9_-]+$',
          :optional    => true,
          :maxlength   => 50

    input :puppioptions,
          :prompt      => "Puppi options",
          :description => "PUPPI options",
          :type        => :string,
          :validation  => '^[a-zA-Z0-9_-]+$',
          :optional    => true,
          :maxlength   => 50

    output :output,
	  :description => "Output from the Puppi run",
          :display_as  => "Output"

    output :exitcode,
          :description  => "Exit Code from the Puppi run",
          :display_as => "Exit Code"
end

action "deploy", :description => "Run puppi deploy" do
    display :always

    input :project,
          :prompt      => "Project",
          :description => "PUPPI project",
          :type        => :string,
          :validation  => '^[a-zA-Z0-9_-]+$',
          :optional    => false,
          :maxlength   => 50

    input :puppioptions,
          :prompt      => "Puppi options",
          :description => "PUPPI options",
          :type        => :string,
          :validation  => '^[a-zA-Z0-9_-]+$',
          :optional    => true,
          :maxlength   => 50

    output :output,
          :description => "Output from the Puppi run",
          :display_as  => "Output"

    output :exitcode,
          :description  => "Exit Code from the Puppi run",
          :display_as => "Exit Code"
end

action "init", :description => "Run puppi init" do
    display :always

    input :project,
          :prompt      => "Project",
          :description => "PUPPI project",
          :type        => :string,
          :validation  => '^[a-zA-Z0-9_-]+$',
          :optional    => false,
          :maxlength   => 50

    input :puppioptions,
          :prompt      => "Puppi options",
          :description => "PUPPI options",
          :type        => :string,
          :validation  => '^[a-zA-Z0-9_-]+$',
          :optional    => true,
          :maxlength   => 50

    output :output,
          :description => "Output from the Puppi run",
          :display_as  => "Output"

    output :exitcode,
          :description  => "Exit Code from the Puppi run",
          :display_as => "Exit Code"
end

action "rollback", :description => "Run puppi rollback" do
    display :always

    input :project,
          :prompt      => "Project",
          :description => "PUPPI project",
          :type        => :string,
          :validation  => '^[a-zA-Z0-9_-]+$',
          :optional    => false,
          :maxlength   => 50

    input :puppioptions,
          :prompt      => "Puppi options",
          :description => "PUPPI options",
          :type        => :string,
          :validation  => '^[a-zA-Z0-9_-]+$',
          :optional    => false,
          :maxlength   => 50

    output :output,
          :description => "Output from the Puppi run",
          :display_as  => "Output"

    output :exitcode,
          :description  => "Exit Code from the Puppi run",
          :display_as => "Exit Code"
end


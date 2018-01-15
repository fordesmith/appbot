class Menu
  @@items =  [
    {
      id: 'investment',
      name: 'Investment',
      options: ['Account Ownership'],
    },
    {
      id: 'SMSF',
      name: 'SMSF',
      options: ['Trust Type'],
    },
    {
      id: 'superannuation',
      name: 'Superannuation',
      options: ['Super Account Type'],
    }
  ]

  @@options = [
    {
      id: 'Account Ownership',
      choices: [
        {
          id: 'individual',
          name: 'Individual',
        },
        {
          id: 'joint',
          name: 'Joint',
        },
        {
          id: 'individual trust',
          name: 'Individual Trust',
        },
        {
          id: 'corporate trust',
          name: 'Corporate Trust',
        },
      ],
    },
    {
      id: 'Trust Type',
      choices: [
        {
          id: 'individual',
          name: 'Individual',
        },
        {
          id: 'corporate',
          name: 'Corporate',
        },
     
      ],
    },
    {
      id: 'Super Account Type',
      choices: [
        {
          id: 'superannuation',
          name: 'Superannuation',
        },
        {
          id: 'pension',
          name: 'Pension',
        },
     
      ],
    }
  ]

  def self.items
    @@items
  end

  def self.options
    @@options
  end

  def self.list_of_types
    self.items.map { |i| ({ text: i[:name], value: i[:id] })}
  end

  def self.list_of_choices_for_option(option_id)
    choices = self.options.find {|o| o[:id] == option_id}[:choices]
    return choices.map { |c| ({ text: c[:name], value: c[:id]})}
  end

  def self.choice_name_for_id(option_id, choice_id)
    option = self.options.find {|o| o[:id] == option_id}
    if !option.nil?
      choice = option[:choices].find {|c| c[:id] == choice_id}
      return choice[:name]
    end
    return false
  end
  
end

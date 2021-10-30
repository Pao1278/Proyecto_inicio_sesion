class Usuario < ApplicationRecord
 validates :age, numericality: {
   greater_than_or_equal_to: 10,
   less_than_or_equal_to: 150
}
  
  validates :first_name, :last_name,
    length: {minimum: 2, maximum: 150,
    message: "El nombre debe estar entre 2 y 150 caracteres"
  }

  validates :first_name, :last_name, :email_address, :age,
    presence: { message: "Este campo es requerido." 
  } 
  
  validates :email_address,
    uniqueness: { message: "El nombre ya ha sido utilizado." 
  }
end 

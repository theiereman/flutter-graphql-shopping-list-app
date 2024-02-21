export const PASSWORD_VALIDATION_ERROR_MESSAGE =
  'Password must be at least 8 characters long and contain at least one number, one letter, and one special character (@$!%*#?&$^_-)'

export const EMAIL_VALIDATION_ERROR_MESSAGE = 'Email format invalid'

export const emptyStringErrorMessage = (emptyValueName: string): string => {
  return `${emptyValueName} cannot be empty`
}

export const validateEmail = (email: string): boolean => {
  return /^[\w\-\.]+@([\w-]+\.)+[\w-]{2,}$/.test(email)
}

export const validatePassword = (password: string): boolean => {
  if (!password) return false
  return /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&^_-])[A-Za-z\d@$!%*#?&^_-]{8,}$/.test(
    password,
  )
}

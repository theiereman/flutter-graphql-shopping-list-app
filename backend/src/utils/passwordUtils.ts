export const PASSWORD_VALIDATION_ERROR_MESSAGE =
  'Password must be at least 8 characters long and contain at least one number, one letter, and one special character (@$!%*#?&$^)'

export const validatePassword = (password: string): boolean => {
  if (!password) return false
  return /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&^])[A-Za-z\d@$!%*#?&^]{8,}$/.test(
    password,
  )
}

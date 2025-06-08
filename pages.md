@ Permission:
- GeoLocation

# OnBoarding

Data:
Image[] (getOnboardingImages)

# NearOffices

Input:
GeoLocation

Data:
Office[] (getNearbyOffices)

Action:
ClickOffice


# Auth Module

if not cache
## New User

Input:
Document
DocumentType

checkDocumentExists

Output:
DocumentFound (Registered | Pending) @@Login @@Register
DocumentNotFound @@NearOffices

if documentFound but .userId is null
## Register
Input:
Email
Password
ConfirmPassword

createUser

Output:
User
@@VerifyEmail

if user but .verified is false
## Verify Email
requestVerificationEmail

Input:
Code
User (Context)

Action:
Verify (verifyEmail)
New Code (requestVerificationEmail)

Output:
EmailVerified  @@Home
EmailNotVerified

## Login
Input:
Email
Password

authUserWithPassword

Output:
User @@Home
UserNotFound @@Register

## ResetPassword

### Email Input:
Input:
Email

requestPasswordReset

Output:
PasswordResetRequested @@ResetPasswordConfirmation
NotFound



Password
ConfirmPassword

requestPasswordReset


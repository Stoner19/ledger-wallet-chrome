@declareRoutes = (route, app) ->

  ## Onboarding
  route '/onboarding/plug', (params) ->
    app.navigate ONBOARDING_LAYOUT, OnboardingPlugViewController
  route '/onboarding/unplug', (params) ->
    app.navigate ONBOARDING_LAYOUT, OnboardingUnplugViewController

  ## Wallet
  # Dashboard
  route '/wallet/dashboard/index:#action:', (params) ->
    app.navigate WALLET_LAYOUT, WalletDashboardIndexViewController

  # Accounts
  route '/wallet/accounts/index{#action}{?params}', (params) ->
    l 'Accounts'
enum AppFlavor { staging, develop, production }

extension FlavorName on AppFlavor {
  String get name {
    switch (this) {
      case AppFlavor.staging:
        return 'staging';
      case AppFlavor.develop:
        return 'develop';
      case AppFlavor.production:
        return 'production';
    }
  }

  String get baseUrl {
    switch (this) {
      case AppFlavor.staging:
        return 'https://uat.abcmedia.magnolia-platform.com/.rest/api/v1';
      case AppFlavor.develop:
        return 'https://dev.abcmedia.magnolia-platform.com/.rest/api/v1';
      case AppFlavor.production:
        return 'https://prod.abcmedia-prod.magnolia-platform.com/.rest/api/v1';
    }
  }

  String get baseImageUrl {
    switch (this) {
      case AppFlavor.staging:
        return 'https://uat.abcmedia.magnolia-platform.com';
      case AppFlavor.develop:
        return 'https://dev.abcmedia.magnolia-platform.com';
      case AppFlavor.production:
        return 'https://cdn.blinx.com';
    }
  }

  String get baseFrontendUrl {
    switch (this) {
      case AppFlavor.staging:
        return 'https://abc-uat.vercel.app';
      case AppFlavor.develop:
        return 'https://abc-dev.vercel.app';
      case AppFlavor.production:
        return 'https://abc-prod.vercel.app';
    }
  }
}

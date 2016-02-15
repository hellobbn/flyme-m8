.class Lorg/flerovium/settings/privacyguard/AppInfoLoader$1;
.super Ljava/lang/Object;
.source "AppInfoLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/privacyguard/AppInfoLoader;->loadInstalledApps()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/privacyguard/AppInfoLoader;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/privacyguard/AppInfoLoader;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lorg/flerovium/settings/privacyguard/AppInfoLoader$1;->this$0:Lorg/flerovium/settings/privacyguard/AppInfoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;)I
    .locals 2
    .param p1, "lhs"    # Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;
    .param p2, "rhs"    # Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;

    .prologue
    .line 114
    iget-boolean v0, p1, Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    iget-boolean v1, p2, Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    if-eq v0, v1, :cond_1

    .line 115
    iget-boolean v0, p1, Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    .line 115
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p1, Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    iget-object v1, p2, Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 111
    check-cast p1, Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/flerovium/settings/privacyguard/AppInfoLoader$1;->compare(Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;Lorg/flerovium/settings/privacyguard/PrivacyGuardManager$AppInfo;)I

    move-result v0

    return v0
.end method

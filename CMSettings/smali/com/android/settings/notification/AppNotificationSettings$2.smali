.class Lorg/flerovium/settings/notification/AppNotificationSettings$2;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/notification/AppNotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/notification/AppNotificationSettings;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lorg/flerovium/settings/notification/AppNotificationSettings;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lorg/flerovium/settings/notification/AppNotificationSettings$2;->this$0:Lorg/flerovium/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lorg/flerovium/settings/notification/AppNotificationSettings$2;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lorg/flerovium/settings/notification/AppNotificationSettings$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 176
    .local v0, "block":Z
    iget-object v1, p0, Lorg/flerovium/settings/notification/AppNotificationSettings$2;->this$0:Lorg/flerovium/settings/notification/AppNotificationSettings;

    # getter for: Lorg/flerovium/settings/notification/AppNotificationSettings;->mBackend:Lorg/flerovium/settings/notification/NotificationAppList$Backend;
    invoke-static {v1}, Lorg/flerovium/settings/notification/AppNotificationSettings;->access$200(Lorg/flerovium/settings/notification/AppNotificationSettings;)Lorg/flerovium/settings/notification/NotificationAppList$Backend;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/notification/AppNotificationSettings$2;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lorg/flerovium/settings/notification/AppNotificationSettings$2;->val$uid:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/flerovium/settings/notification/NotificationAppList$Backend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

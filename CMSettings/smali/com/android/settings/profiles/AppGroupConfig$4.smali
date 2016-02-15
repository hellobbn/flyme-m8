.class Lorg/flerovium/settings/profiles/AppGroupConfig$4;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/profiles/AppGroupConfig;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/profiles/AppGroupConfig;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lorg/flerovium/settings/profiles/AppGroupConfig$4;->this$0:Lorg/flerovium/settings/profiles/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lorg/flerovium/settings/profiles/AppGroupConfig$4;->this$0:Lorg/flerovium/settings/profiles/AppGroupConfig;

    # getter for: Lorg/flerovium/settings/profiles/AppGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;
    invoke-static {v0}, Lorg/flerovium/settings/profiles/AppGroupConfig;->access$300(Lorg/flerovium/settings/profiles/AppGroupConfig;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lorg/flerovium/settings/profiles/AppGroupConfig$4;->this$0:Lorg/flerovium/settings/profiles/AppGroupConfig;

    # getter for: Lorg/flerovium/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;
    invoke-static {v1}, Lorg/flerovium/settings/profiles/AppGroupConfig;->access$000(Lorg/flerovium/settings/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 296
    iget-object v0, p0, Lorg/flerovium/settings/profiles/AppGroupConfig$4;->this$0:Lorg/flerovium/settings/profiles/AppGroupConfig;

    const/4 v1, 0x0

    # setter for: Lorg/flerovium/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;
    invoke-static {v0, v1}, Lorg/flerovium/settings/profiles/AppGroupConfig;->access$002(Lorg/flerovium/settings/profiles/AppGroupConfig;Landroid/app/NotificationGroup;)Landroid/app/NotificationGroup;

    .line 297
    iget-object v0, p0, Lorg/flerovium/settings/profiles/AppGroupConfig$4;->this$0:Lorg/flerovium/settings/profiles/AppGroupConfig;

    invoke-virtual {v0}, Lorg/flerovium/settings/profiles/AppGroupConfig;->finish()V

    .line 298
    return-void
.end method

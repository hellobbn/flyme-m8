.class Lorg/flerovium/settings/users/RestrictedProfileSettings$2;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/users/RestrictedProfileSettings;->removeUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/users/RestrictedProfileSettings;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lorg/flerovium/settings/users/RestrictedProfileSettings$2;->this$0:Lorg/flerovium/settings/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/flerovium/settings/users/RestrictedProfileSettings$2;->this$0:Lorg/flerovium/settings/users/RestrictedProfileSettings;

    iget-object v0, v0, Lorg/flerovium/settings/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lorg/flerovium/settings/users/RestrictedProfileSettings$2;->this$0:Lorg/flerovium/settings/users/RestrictedProfileSettings;

    iget-object v1, v1, Lorg/flerovium/settings/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 149
    iget-object v0, p0, Lorg/flerovium/settings/users/RestrictedProfileSettings$2;->this$0:Lorg/flerovium/settings/users/RestrictedProfileSettings;

    invoke-virtual {v0}, Lorg/flerovium/settings/users/RestrictedProfileSettings;->finishFragment()V

    .line 150
    return-void
.end method

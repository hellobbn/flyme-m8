.class Lorg/flerovium/settings/users/RestrictedProfileSettings$1;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/users/RestrictedProfileSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 133
    iput-object p1, p0, Lorg/flerovium/settings/users/RestrictedProfileSettings$1;->this$0:Lorg/flerovium/settings/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lorg/flerovium/settings/users/RestrictedProfileSettings$1;->this$0:Lorg/flerovium/settings/users/RestrictedProfileSettings;

    # invokes: Lorg/flerovium/settings/users/RestrictedProfileSettings;->removeUser()V
    invoke-static {v0}, Lorg/flerovium/settings/users/RestrictedProfileSettings;->access$000(Lorg/flerovium/settings/users/RestrictedProfileSettings;)V

    .line 136
    return-void
.end method

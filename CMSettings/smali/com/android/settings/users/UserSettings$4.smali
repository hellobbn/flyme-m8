.class Lorg/flerovium/settings/users/UserSettings$4;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lorg/flerovium/settings/users/UserSettings$4;->this$0:Lorg/flerovium/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lorg/flerovium/settings/users/UserSettings$4;->this$0:Lorg/flerovium/settings/users/UserSettings;

    # invokes: Lorg/flerovium/settings/users/UserSettings;->removeUserNow()V
    invoke-static {v0}, Lorg/flerovium/settings/users/UserSettings;->access$900(Lorg/flerovium/settings/users/UserSettings;)V

    .line 503
    return-void
.end method
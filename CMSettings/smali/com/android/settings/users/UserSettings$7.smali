.class Lorg/flerovium/settings/users/UserSettings$7;
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
    .line 558
    iput-object p1, p0, Lorg/flerovium/settings/users/UserSettings$7;->this$0:Lorg/flerovium/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lorg/flerovium/settings/users/UserSettings$7;->this$0:Lorg/flerovium/settings/users/UserSettings;

    iget-object v1, p0, Lorg/flerovium/settings/users/UserSettings$7;->this$0:Lorg/flerovium/settings/users/UserSettings;

    # getter for: Lorg/flerovium/settings/users/UserSettings;->mAddedUserId:I
    invoke-static {v1}, Lorg/flerovium/settings/users/UserSettings;->access$1100(Lorg/flerovium/settings/users/UserSettings;)I

    move-result v1

    # invokes: Lorg/flerovium/settings/users/UserSettings;->switchUserNow(I)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/users/UserSettings;->access$1200(Lorg/flerovium/settings/users/UserSettings;I)V

    .line 561
    return-void
.end method

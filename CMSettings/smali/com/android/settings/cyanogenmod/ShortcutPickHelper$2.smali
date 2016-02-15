.class Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper$2;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper;->processShortcut(Landroid/content/Intent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper$2;->this$0:Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper$2;->this$0:Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper;

    # getter for: Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper;->mListener:Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;
    invoke-static {v0}, Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper;->access$200(Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper;)Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Lorg/flerovium/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    return-void
.end method

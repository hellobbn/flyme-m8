.class Lorg/flerovium/settings/profiles/AppGroupConfig$2;
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
    .line 273
    iput-object p1, p0, Lorg/flerovium/settings/profiles/AppGroupConfig$2;->this$0:Lorg/flerovium/settings/profiles/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lorg/flerovium/settings/profiles/AppGroupConfig$2;->this$0:Lorg/flerovium/settings/profiles/AppGroupConfig;

    # invokes: Lorg/flerovium/settings/profiles/AppGroupConfig;->doDelete()V
    invoke-static {v0}, Lorg/flerovium/settings/profiles/AppGroupConfig;->access$200(Lorg/flerovium/settings/profiles/AppGroupConfig;)V

    .line 277
    return-void
.end method

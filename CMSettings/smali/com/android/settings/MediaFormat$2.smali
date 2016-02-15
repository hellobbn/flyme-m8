.class Lorg/flerovium/settings/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/MediaFormat;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/MediaFormat;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lorg/flerovium/settings/MediaFormat$2;->this$0:Lorg/flerovium/settings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lorg/flerovium/settings/MediaFormat$2;->this$0:Lorg/flerovium/settings/MediaFormat;

    const/16 v1, 0x37

    # invokes: Lorg/flerovium/settings/MediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lorg/flerovium/settings/MediaFormat;->access$000(Lorg/flerovium/settings/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/flerovium/settings/MediaFormat$2;->this$0:Lorg/flerovium/settings/MediaFormat;

    # invokes: Lorg/flerovium/settings/MediaFormat;->establishFinalConfirmationState()V
    invoke-static {v0}, Lorg/flerovium/settings/MediaFormat;->access$100(Lorg/flerovium/settings/MediaFormat;)V

    .line 154
    :cond_0
    return-void
.end method

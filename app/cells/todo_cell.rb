class TodoCell < UITableViewCell
  ID = "TodoCell"

  attr_reader :text_label, :notes_label

  def initWithStyle(_, reuseIdentifier: reuseIdentifier)
    super

    @text_label = UILabel.new
    @text_label.textAlignment = NSTextAlignmentCenter
    @text_label.translatesAutoresizingMaskIntoConstraints = false
    contentView.addSubview(@text_label)

    @notes_label = UILabel.new
    @notes_label.textAlignment = NSTextAlignmentCenter
    @notes_label.translatesAutoresizingMaskIntoConstraints = false
    contentView.addSubview(@notes_label)

    constraints = []
    constraints += NSLayoutConstraint.constraintsWithVisualFormat(
      "H:|-margin-[text_label]-margin-|",
      options: NSLayoutFormatDirectionLeadingToTrailing,
      metrics: { "margin" => 20 },
      views: { "text_label" => @text_label }
    )
    constraints += NSLayoutConstraint.constraintsWithVisualFormat(
      "V:|-margin-[text_label]-margin-[notes_label]-margin-|",
      options: NSLayoutFormatDirectionLeadingToTrailing,
      metrics: { "margin" => 20 },
      views: { "text_label" => @text_label, "notes_label" => @notes_label }
    )
    constraints += NSLayoutConstraint.constraintsWithVisualFormat(
      "H:|-margin-[notes_label]-margin-|",
      options: NSLayoutFormatDirectionLeadingToTrailing,
      metrics: { "margin" => 20 },
      views: { "notes_label" => @notes_label }
    )
    contentView.addConstraints(constraints)

    self
  end
end

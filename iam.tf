resource "aws_iam_role" "cloud-crew_role" {
  name = "cloud-crew_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
      },
    ],
  })
}

resource "aws_iam_role_policy_attachment" "ec2_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role     = aws_iam_role.cloud-crew_role.name
}

resource "aws_iam_role_policy_attachment" "rds_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role     = aws_iam_role.cloud-crew_role.name
}

resource "aws_iam_role_policy_attachment" "cloudwatch_policy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role     = aws_iam_role.cloud-crew_role.name
}

resource "aws_iam_role_policy_attachment" "cloudfront_policy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudFrontReadOnlyAccess "  # Updated policy ARN
  role     = aws_iam_role.cloud-crew_role.name
}


resource "aws_iam_role_policy_attachment" "cloud-crew_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role     = aws_iam_role.cloud-crew_role.name
}

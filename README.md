# Jobtrackr

A full-stack job application tracker built with **Ruby on Rails**. Stay organized during your job search by tracking companies, roles, application status, follow-up dates, and notes — all in one clean interface.

---

## Screenshots

> _Add screenshots here after deployment_

| Job List | Add Application | Application Detail |
|---|---|---|
| ![List](screenshots/list.png) | ![Form](screenshots/form.png) | ![Detail](screenshots/detail.png) |

---

## Features

- **Full CRUD** — create, view, edit, and delete job applications
- **Status tracking** — Applied, Interview, Offer, Rejected with color-coded badges
- **Follow-up date** — never miss a follow-up with a dedicated date field
- **Notes field** — store recruiter info, impressions, or next steps per application
- **Job URL** — link directly to the original job posting
- **Responsive UI** — clean layout with Tailwind CSS via CDN

---

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Ruby on Rails 8.1 |
| Language | Ruby 3.2 |
| Database | PostgreSQL |
| ORM | ActiveRecord |
| Frontend | ERB templates + Tailwind CSS |
| Server | Puma |
| Version Control | Git + GitHub |

---

## Architecture

Jobtrackr follows the standard **Rails MVC architecture**:

```
app/
├── models/
│   └── job_application.rb       # ActiveRecord model, maps to job_applications table
├── controllers/
│   └── job_applications_controller.rb  # Handles all 7 RESTful actions
├── views/
│   └── job_applications/
│       ├── index.html.erb       # List all applications
│       ├── show.html.erb        # View single application
│       ├── new.html.erb         # New application form
│       ├── edit.html.erb        # Edit application form
│       └── _form.html.erb       # Shared form partial
└── layouts/
    └── application.html.erb     # Base layout with nav bar
```

### Key Technical Decisions

- **Rails scaffold** was used to generate the initial MVC structure, then customized with Tailwind styling and field-level validation feedback
- **PostgreSQL** chosen over SQLite for production-readiness and compatibility with cloud hosting platforms like Render
- **Tailwind CSS via CDN** used for rapid UI development without a complex asset pipeline build step
- **RESTful routing** — all actions follow Rails conventions (`GET /job_applications`, `POST /job_applications`, `DELETE /job_applications/:id`, etc.)
- **ERB partials** (`_form.html.erb`) keep the new and edit views DRY

---

## Database Schema

```
job_applications
├── id               :bigint       primary key
├── company_name     :string
├── role_title       :string
├── job_url          :string
├── status           :string       (applied / interview / offer / rejected)
├── applied_date     :date
├── follow_up_date   :date
├── notes            :text
├── created_at       :datetime
└── updated_at       :datetime
```

---

## Local Setup

### Prerequisites
- Ruby 3.2+
- Rails 8.1+
- PostgreSQL

### Steps

```bash
# Clone the repo
git clone https://github.com/saatwika-matta/jobtrackr.git
cd jobtrackr

# Install dependencies
bundle install

# Create and migrate the database
rails db:create
rails db:migrate

# Start the server
rails server
```

Visit `http://127.0.0.1:3000/job_applications`

---

## Future Improvements

- [ ] User authentication with Devise (multi-user support)
- [ ] Filter and search applications by status or company
- [ ] Dashboard with application stats and charts
- [ ] Email reminders for follow-up dates
- [ ] Deploy to Render or Railway

---

## Author

**Saatwika Matta**  
[Portfolio](https://saatwika-ai-portfolio.vercel.app) · [LinkedIn](https://www.linkedin.com/in/saatwikamatta/) · [GitHub](https://github.com/saatwika-matta)
